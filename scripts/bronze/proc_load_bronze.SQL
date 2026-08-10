/*
============================================================================
 Procedure: bronze.upload_data()
 Purpose: Load raw CRM and ERP source data into the Bronze layer.
          Existing data is truncated before each load.
          ETL execution time is recorded for each table and the full process.
 ============================================================================
*/


CREATE OR REPLACE PROCEDURE bronze.uplaod_data()
LANGUAGE plpgsql
AS $$
DECLARE 
	start_time TIMESTAMP;
	end_time TIMESTAMP;
	start_etl TIMESTAMP;
	end_etl TIMESTAMP;
BEGIN
	start_etl :=   clock_timestamp();
	RAISE NOTICE '=============================================================================================';
	RAISE NOTICE 'Loading Bronze Layer';
	RAISE NOTICE '=============================================================================================';

	RAISE NOTICE '---------------------------------------------------------------------------------------------';
	RAISE NOTICE 'Loading CRM';
	RAISE NOTICE '---------------------------------------------------------------------------------------------';

	start_time := clock_timestamp();
	TRUNCATE TABLE bronze.crm_cust_info;
	COPY  bronze.crm_cust_info
	FROM 'C:\Users\DELL\Desktop\study\dwh\dwh_project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	WITH(
		FORMAT CSV,
		HEADER TRUE,
		DELIMITER ','
	);
	end_time := clock_timestamp();

	RAISE NOTICE 'ETL duration: %', end_time - start_time;
	

	start_time := clock_timestamp();
	TRUNCATE TABLE bronze.crm_prd_info;
	COPY bronze.crm_prd_info
	FROM 'C:\Users\DELL\Desktop\study\dwh\dwh_project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	WITH(
		FORMAT CSV,
		HEADER TRUE,
		DELIMITER ','
	);

	end_time := clock_timestamp();
	RAISE NOTICE 'ETL duration: %', end_time - start_time;

	start_time := clock_timestamp();
	TRUNCATE TABLE bronze.crm_sales_details;
	COPY bronze.crm_sales_details
	FROM	'C:\Users\DELL\Desktop\study\dwh\dwh_project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	WITH(
		FORMAT CSV,
		HEADER TRUE,
		DELIMITER ','
	);
	end_time := clock_timestamp();
	RAISE NOTICE 'ETL duration: %', end_time - start_time;	

	RAISE NOTICE '---------------------------------------------------------------------------------------------';
	RAISE NOTICE 'Loading ERP';
	RAISE NOTICE '---------------------------------------------------------------------------------------------';

	start_time := clock_timestamp();
	TRUNCATE bronze.erp_cust_az12;
	COPY bronze.erp_cust_az12
	FROM	'C:\Users\DELL\Desktop\study\dwh\dwh_project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	WITH(
		FORMAT CSV,
		HEADER TRUE,
		DELIMITER ','
	);
	end_time := clock_timestamp();
	RAISE NOTICE 'ETL duration: %', end_time - start_time;

	start_time := clock_timestamp();
	TRUNCATE bronze.erp_loc_a101;
	COPY bronze.erp_loc_a101
	FROM 'C:\Users\DELL\Desktop\study\dwh\dwh_project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
	WITH(
		FORMAT CSV,
		HEADER TRUE,
		DELIMITER ','
	);
	end_time := clock_timestamp();
	RAISE NOTICE 'ETL duration: %', end_time - start_time;
	
	
	start_time := clock_timestamp();
	TRUNCATE bronze.erp_px_cat_g1v2;
	COPY bronze.erp_px_cat_g1v2
	FROM 'C:\Users\DELL\Desktop\study\dwh\dwh_project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	WITH(
		FORMAT CSV,
		HEADER TRUE,
		DELIMITER ','
	);
	end_time := clock_timestamp();
	RAISE NOTICE 'ETL duration: %', end_time - start_time;

		end_etl := clock_timestamp();
		RAISE NOTICE 'Whole ETL proccess took:  %', end_etl - start_etl;
	 
	EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE '%', SQLERRM;
END;
$$;
