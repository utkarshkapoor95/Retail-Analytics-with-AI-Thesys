# AI Retail Analytics Suite

An end-to-end retail analytics project combining SQL, Python, Power BI, and AI (Thesys) to transform raw superstore data into business insights, dashboards, and automated recommendations.

---

## Project Overview

This project analyzes a retail superstore dataset to solve real-world business problems across:

- Sales Performance
- Profitability Optimization
- Customer Behavior
- Regional Analysis

Full pipeline: Python cleaning → SQL analysis → Power BI dashboard → AI-generated insights → Business documentation.

---

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python (Pandas) | Data cleaning and preprocessing |
| SQL (MySQL) | Business intelligence queries |
| Power BI | Interactive dashboard and visualization |
| Thesys AI | Automated insight generation and recommendations |

---

## Pipeline

**1. Data Cleaning (Python)**
- Removed null values and standardized column names
- Prepared structured dataset for SQL and BI tools
- Ensured data consistency across all downstream tools

**2. SQL Analysis**

11 business-driven queries covering:
- Total sales by category
- Profit by region
- Top 10 customers by revenue
- Monthly sales trend (year-over-year)
- Top profitable products
- Sales by customer segment
- Category-wise profit margin
- Loss-making regions (HAVING clause)

See [`superstore_analysis.sql`](superstore_analysis.sql) for all queries.

**3. Power BI Dashboard**

Interactive dashboard featuring:
- KPI cards: Sales, Profit, Quantity
- Sales trend analysis over time
- Profit by region
- Category and segment performance
- Geographic map view

**4. AI Analytics Agent (Thesys)**

Automated AI analysis that:
- Detects patterns and anomalies in the dataset
- Generates business insights and recommendations
- Suggests pricing and inventory strategies

See [`AI-Insights.md`](AI-Insights.md) for the full AI-generated output.

---

## Key Findings

- Technology category has the highest profit margin
- Furniture category shows weak and often negative margins
- West region outperforms all other regions in profit
- Several products in Furniture generate consistent losses
- Strong seasonal patterns visible in monthly trend data

---

## Business Recommendations

- Audit and optimize or discontinue loss-making Furniture products
- Prioritize high-margin Technology and Office Supplies categories
- Replicate West region strategies in Central and South
- Target Consumer segment which drives the highest sales volume
- Review pricing strategy for discount-heavy SKUs

---

## Files

| File | Description |
|---|---|
| `SuperStore Sales DataSet - Sheet1.csv` | Raw dataset |
| `superstore_sales.ipynb` | Python: data cleaning and EDA |
| `superstore_analysis.sql` | 11 SQL business intelligence queries |
| `Super_Store_dashboard.pbix.pbix` | Power BI interactive dashboard |
| `AI-Insights.md` | AI-generated insights from Thesys |
| `AI-imagescategory1.jpeg` | AI insight screenshot — category analysis |
| `AI-imagescategory2.jpeg` | AI insight screenshot — category analysis |
| `AI-imagescategory3.jpeg` | AI insight screenshot — category analysis |
| `AI-imagesprofit1.jpeg` | AI insight screenshot — profit analysis |
| `AI-imagesprofit2.jpeg` | AI insight screenshot — profit analysis |
| `AI-imagesprofit3.jpeg` | AI insight screenshot — profit analysis |
| `Super_Store Report (1).pdf` | Full analysis report |
| `Super_Store Analysis.pptx` | Business presentation deck |
| `Super_Store_Business Problem.pdf` | Problem framing document |

---

## About

Built by **Utkarsh Kapoor** — MBA | Operations to Data Analytics and AI

[LinkedIn](https://linkedin.com/in/utkarsh-kapoor-618256203) · [GitHub](https://github.com/utkarshkapoor95)
