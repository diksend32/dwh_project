# 🏗️ Data Warehouse Project

## Objective

Develop a modern data warehouse solution using **PostgreSQL** to integrate, transform, and organize data from different source systems into a centralized analytical environment.

The project focuses on:

- Data Extraction & Loading
- Data Cleaning & Transformation
- Data Warehouse Modeling
- ETL Pipelines
- Analytical Data Preparation

These processes provide a reliable and structured foundation for business intelligence, reporting, and data analysis.

For more details, refer to `docs/requirements.md`.

## 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniques and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file for the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies for the project


## 🛠️ Technologies

- **PostgreSQL**
- **SQL**
- **ETL**
- **Data Warehousing**
- **Dimensional Modeling**
- **Git & GitHub**
- **Draw.io**

---

## 🗄️ Data Warehouse Architecture

The project follows a layered data warehouse architecture:

**Source Systems → Bronze → Silver → Gold**

- **Bronze Layer** — Raw data ingestion and storage
- **Silver Layer** — Data cleaning, transformation, and standardization
- **Gold Layer** — Business-ready analytical data models

The data warehouse is implemented using **PostgreSQL**.

---

## 🔄 ETL Process

The ETL process is responsible for extracting data from source systems, transforming it, and loading it into the data warehouse.

### Bronze Layer

Stores raw data from the ERP and CRM source systems with minimal transformation.

### Silver Layer

Cleans and transforms the raw data by handling data quality issues, standardizing values, and preparing the data for further modeling.

### Gold Layer

Contains the final analytical models designed for reporting and business intelligence.

---

## 📊 Data Modeling

The project uses dimensional modeling principles to organize data for analytical workloads.

The Gold layer contains business-ready models following a **star schema** approach, including fact and dimension tables.

---

## 🧪 Data Quality

The `tests/` directory contains scripts used to validate the quality and consistency of the data warehouse.

Testing focuses on areas such as:

- Data completeness
- Data consistency
- Duplicate records
- Data integrity
- Transformation accuracy

---

## 📚 Documentation

Additional project documentation is available in the `docs/` directory.

| File | Description |
|---|---|
| `etl.drawio` | ETL techniques and methods |
| `data_architecture.drawio` | Data warehouse architecture |
| `data_catalog.md` | Dataset and field descriptions |
| `data_flow.drawio` | Data flow diagram |
| `data_models.drawio` | Data models and star schema |
| `naming-conventions.md` | Naming conventions |

---

## 👨‍💻 About Me

Hi! I'm **Muhammad Suvonov**, a **Data Analyst** based in Tashkent, Uzbekistan. I’m passionate about working with data and building reliable data solutions.

I have experience with **SQL, PostgreSQL, Power BI, Excel, Python, and Pandas**, with a focus on data analysis, reporting automation, data warehousing, and business intelligence.

I’m currently a **Data Analytics Engineering Trainee at EPAM Systems**, where I work with **PostgreSQL, data warehousing, ETL pipelines, 3NF and dimensional models, SCD Type 2, star schemas, complex SQL queries, stored procedures, and analytical reports**.

Previously, as a **Data/Sales Analyst at Novugen**, I automated weekly and monthly sales reports using Python and Pandas, reducing reporting time by **70%**, and analyzed pharmacy and distributor sales data to identify trends and improve product availability.

I enjoy transforming raw data into structured and meaningful information, building data warehouse solutions, automating repetitive processes, and continuously developing my skills in **Data Analytics, Data Engineering, and Business Intelligence**.

Let's stay in touch! Feel free to connect with me:

- 🔗 **LinkedIn:** linkedin.com/in/suvonovmuhammad
- 📧 **Email:** suvonovmuhammad90@gmail.com

---

## 🛡️ License

This project is licensed under the **MIT License**.

You are free to use, modify, and share this project with proper attribution.
