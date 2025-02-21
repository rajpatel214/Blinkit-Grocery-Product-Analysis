# Blinkit-Grocery-Product-Analysis

## Description
Blinkit is a reputed online grocery store that leverages MySQL to analyze their data and make informed, data-driven decisions. By utilizing MySQL, they track sales trends, analyze customer behavior, and identify areas for improvement. For instance, they examine sales data for particular product categories or compare sales figures across different outlets to determine where they need to focus their efforts to increase sales.

In addition, Blinkit gathers data on customer behavior and preferences. They analyze purchase histories to identify frequently bought-together products and track customer feedback to gain insights into customer expectations. By utilizing MySQL for data analysis, Blinkit gains valuable insights into their business operations and makes informed decisions that improve their operations and customer satisfaction.

## Dataset
The dataset used in this case study consists of a table named `Grocery Sales`, which contains 12 columns:

- **Item_Identifier**: A unique ID for each product in the dataset.
- **Item_Weight**: The weight of the product.
- **Item_Fat_Content**: Indicates whether the product is low fat or not.
- **Item_Visibility**: The percentage of the total display area in the store that is allocated to the specific product.
- **Item_Type**: The category or type of product.
- **Item_MRP**: The maximum retail price (list price) of the product.
- **Outlet_Identifier**: A unique ID for each store in the dataset.
- **Outlet_Establishment_Year**: The year in which the store was established.
- **Outlet_Size**: The size of the store in terms of ground area covered.
- **Outlet_Location_Type**: The type of city or region in which the store is located.
- **Outlet_Type**: Indicates whether the store is a grocery store or a supermarket.
- **Item_Outlet_Sales**: The sales of the product in the particular store. This is the outcome variable that we want to analyze.

## SQL Queries and Their Purpose
The SQL queries in this project are designed to extract meaningful insights from the dataset. Below is a summary of the queries and the techniques used:

### Data Exploration Queries:
1. **Retrieve all records**: `SELECT * FROM blinkit_online;`
2. **Get distinct items and types**: `SELECT DISTINCT item_identifier, item_type FROM blinkit_online;`
3. **Count total items**: `SELECT COUNT(item_identifier) AS total_Item_Identifier FROM blinkit_online;`

### Statistical Analysis Queries:
4. **Find maximum item weight**: `SELECT MAX(item_weight) AS max_item_weight FROM blinkit_online;`
5. **Find minimum item weight**: `SELECT MIN(item_weight) FROM blinkit_online;`
6. **Find average item weight**: `SELECT AVG(item_weight) FROM blinkit_online;`

### Filtering and Grouping Queries:
7. **Count low-fat items**: `SELECT COUNT(*) AS count_item_fat FROM blinkit_online WHERE item_fat_content='Low Fat';`
8. **Count regular-fat items**: `SELECT COUNT(*) AS count_item_fat FROM blinkit_online WHERE item_fat_content='Regular';`
9. **Find maximum MRP**: `SELECT MAX(item_mrp) AS max_mrp FROM blinkit_online;`
10. **Find minimum MRP**: `SELECT MIN(item_mrp) AS min_mrp FROM blinkit_online;`
11. **Filter products by MRP > 200**: `SELECT * FROM blinkit_online WHERE item_mrp > 200;`

### Sorting and Aggregation Queries:
12. **Find maximum MRP per item type**: `SELECT MAX(item_mrp), item_type FROM blinkit_online GROUP BY item_type ORDER BY MAX(item_mrp) DESC;`
13. **Find average MRP per outlet size**: `SELECT AVG(item_mrp), outlet_size FROM blinkit_online GROUP BY outlet_size ORDER BY AVG(item_mrp) DESC;`
14. **Sort data in descending order by sales**: `SELECT * FROM blinkit_online ORDER BY item_outlet_sales DESC;`
15. **Sort data in ascending order by type**: `SELECT * FROM blinkit_online ORDER BY item_type ASC;`

### Advanced Analytical Queries:
16. **Find count of items by outlet type**: `SELECT COUNT(outlet_type) AS count_outlet_type, outlet_type FROM blinkit_online GROUP BY outlet_type ORDER BY COUNT(outlet_type) DESC;`
17. **Find maximum item sales per establishment year**: `SELECT MAX(item_outlet_sales), outlet_establishment_year FROM blinkit_online GROUP BY outlet_establishment_year ORDER BY MAX(item_outlet_sales) DESC;`
18. **Find minimum MRP per outlet establishment year**: `SELECT MIN(item_mrp), outlet_establishment_year FROM blinkit_online GROUP BY outlet_establishment_year ORDER BY MIN(item_mrp) DESC;`
19. **Find average item weight per location type**: `SELECT AVG(item_weight), outlet_location_type FROM blinkit_online GROUP BY outlet_location_type ORDER BY AVG(item_weight) DESC;`

## SQL Techniques Used
- **Basic SELECT Queries**: Extracting data from the dataset.
- **DISTINCT Clause**: Fetching unique values from columns.
- **Aggregate Functions** (`COUNT`, `AVG`, `MAX`, `MIN`): Performing summary statistics on the dataset.
- **GROUP BY**: Grouping data based on specific columns to obtain aggregated results.
- **HAVING Clause**: Filtering aggregated results based on conditions.
- **ORDER BY**: Sorting query results in ascending or descending order.
- **WHERE Clause**: Applying filters to retrieve specific records based on conditions.
- **BETWEEN Operator**: Extracting data that falls within a specified range.
- **IN Operator**: Filtering data based on multiple specified values.

## Insights Gained from Analysis
By running the above SQL queries, we can derive valuable insights into Blinkit's grocery sales data:
- Identification of the most and least sold products.
- Understanding customer preferences based on frequently purchased items.
- Recognizing high-performing stores based on sales trends.
- Analyzing price variations and their impact on sales.
- Finding patterns in customer buying behavior.
- Evaluating store performance based on location, size, and type.

## Conclusion
This project showcases how MySQL can be used for data analysis in the retail and e-commerce sector. By leveraging SQL queries, we can extract actionable insights from large datasets, helping businesses optimize their operations, product placement, and marketing strategies.

