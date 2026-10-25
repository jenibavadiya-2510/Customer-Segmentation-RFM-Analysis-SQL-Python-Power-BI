# IKEA RFM Customer Segmentation Dashboard

A portfolio project combining SQL Server, Python/pandas, and Power BI to explore retail transactions, calculate customer RFM metrics, segment customers, and prepare dashboard data.

> **Dataset note:** The uploaded files appear to be based on the *Online Retail II* transaction dataset. The data inspected does not establish that the transactions are IKEA-specific. Keep the project title only if it accurately describes your project context; otherwise rename it to **Retail Customer RFM Segmentation Dashboard** before publishing.

## Project contents

- `python/IKEA_RFM_Customer_Segmentation.ipynb` — notebook for data loading, RFM calculations, segmentation, churn flag, and export.
- `sql/` — the seven SQL scripts supplied for the project. Review the database/table names and execute them in the intended order in SQL Server Management Studio.
- `powerbi/IKEA_dashboard.pbit` — Power BI **template** (not a `.pbix` report). Open it in Power BI Desktop and follow prompts to configure/refresh the data source. Save a `.pbix` copy after the report opens successfully.
- `data/README.md` — how to place local input files.
- `powerbi/screenshots/README.md` — where to add genuine Power BI dashboard screenshots.

## Tools

- Microsoft SQL Server / SQL Server Management Studio
- Python 3
- pandas and Jupyter Notebook
- Microsoft Power BI Desktop

## Run the Python notebook

1. Install Python 3.10+ and the packages listed in `requirements.txt`.
2. Put `RetailCleaned.csv` in the `python/` folder. The notebook currently expects a headerless CSV with these nine columns in order: `Invoice`, `StockCode`, `Description`, `Quantity`, `InvoiceDate`, `Price`, `Customer_ID`, `Country`, `SourceSheet`.
3. Open the notebook in Jupyter and run cells from top to bottom.
4. The notebook exports `EcommerceDashboardData.xlsx`. Use that output as the Power BI source if that matches the model configured in the template.

## RFM logic

- **Recency:** days since the customer's most recent purchase relative to the notebook's snapshot date.
- **Frequency:** number of distinct invoices per customer.
- **Monetary:** sum of quantity multiplied by price.
- **Potential churn flag:** `Recency > 90` days. This is a simple rule-based flag, not a predictive machine-learning model.

The notebook currently uses a snapshot date of `2011-12-10`. Confirm that this date suits your dataset before using the results in a presentation.

## Important before publishing

- The raw CSV files are intentionally not included in this repository package because they are large. Keep local copies in the expected location.
- Check data licensing and privacy before publishing data.
- The `.pbit` template may require its data source to be reconnected. I have not verified the dashboard refresh against your local Power BI/SQL Server environment.
- Review the SQL scripts for your own database name and table names before running them.
- Add your name, LinkedIn URL, and genuine project screenshots if you want them in the public repository. Do not add passwords, connection strings, or private credentials.

## Suggested GitHub repository description

`Retail customer segmentation using SQL Server, Python (pandas), RFM analysis, and Power BI.`

## Suggested repository structure

```text
IKEA-RFM-Customer-Segmentation/
├── README.md
├── requirements.txt
├── .gitignore
├── python/
│   └── IKEA_RFM_Customer_Segmentation.ipynb
├── sql/
│   ├── 01_SQLQuery1.sql
│   └── ...
├── powerbi/
│   ├── IKEA_dashboard.pbit
│   └── screenshots/
│       └── README.md
├── data/
│   └── README.md
└── screenshots/
    └── README.md
```
