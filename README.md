# Financial Metrics ETL

This project demonstrates an **ETL (Extract, Transform, Load)** pipeline for financial data.  
It extracts data from Excel sources, cleans and transforms it using Python (Jupyter Notebook),  
loads it into a relational database (SQL Server), and connects the database to Power BI for visualization.

---

## ETL Procedure

### 1. Extract
- Source files: Excel workbooks containing financial metrics across different entities and time periods.  
- The Jupyter Notebook (`Financial_metrics.ipynb`) automates reading multiple Excel sheets/files using **Pandas**.

### 2. Transform
- Clean raw data:
  - Handle missing values  
  - Standardize column names and data types  
  - Normalize financial figures for consistency  
- Perform financial metric calculations:
  - Profit & Loss analysis  
  - Balance sheet ratios  
  - Performance KPIs  

### 3. Load
- Load cleaned data into a **SQL Server** database using Python’s `pyodbc` or `sqlalchemy` connectors.  
- Create SQL scripts (`Performance Query.sql`) for advanced queries and aggregations.  

### 4. Visualize
- Connect **Power BI** to the SQL Server database.  
- Build dashboards to visualize:
  - Financial performance trends  
  - Comparative metrics across years  
  - Custom KPIs for business decision-making  

---

## Project Files
- `Financial_metrics.ipynb` → Jupyter Notebook for ETL process  
- `Performance Query.sql` → SQL script for querying cleaned data  
- `README.md` → Project documentation  

---

## 🛠 Tools & Technologies
- **Python** (Pandas, Numpy, SQLAlchemy/pyodbc)  
- **Excel** (source data)  
- **SQL Server** (target database)  
- **Power BI** (visualization)  

-

##Author
Mark Mulehi
