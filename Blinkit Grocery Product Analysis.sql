use blinkit;

select * from blinkit_online bo ;

#1.all Item_Identifier

select distinct item_identifier,item_type from blinkit_online bo;

#2.count of total Item_Identifier.

select count(item_identifier) as total_Item_Identifier from blinkit_online bo ;

#3.show maximum Item Weight.

select max(item_weight) max_item_weight from blinkit_online bo ;

#4.	show minimum Item Weight.

select min(item_weight) from blinkit_online bo ;

#5.	 average Item_Weight.

select avg(item_weight) from blinkit_online bo ;

#6.	count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.

select count(*) count_item_fat , item_fat_content from blinkit_online bo 
group by item_fat_content having item_fat_content="Low Fat" ;

#7.count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

select count(*) count_item_fat , item_fat_content from blinkit_online bo 
group by item_fat_content having item_fat_content="Regular" ;

#8 maximum Item_MRP 

select max(item_mrp) max_mrp from blinkit_online bo ;

#9. minimum Item_MRP
select min(item_mrp) min_mrp from blinkit_online bo ;

#10. Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.

select item_identifier,item_fat_content,item_type,item_mrp from blinkit_online bo 
where item_mrp >200;

#11.maximum Item_MRP WHERE Item_Fat_Content is Low Fat 

select max(item_mrp) max_mrp , item_fat_content from blinkit_online bo 
group by item_fat_content  having item_fat_content ="Low Fat";

#12. minimum Item_MRP whose Item_Fat_Content is Low Fat 

select min(item_mrp) min_mrp , item_fat_content from blinkit_online bo 
group by item_fat_content  having item_fat_content ="Low Fat";

#13. ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from blinkit_online bo where item_mrp between 50 and 100;

#14. ALL UNIQUE value of Item_Fat_Content

select distinct item_fat_content from blinkit_online bo ;

#15.ALL UNIQUE value of  Item_Type 

select distinct item_type from blinkit_online bo ;

#16. ALL DATA in descending ORDER by Item MRP 

select * from blinkit_online bo order by item_mrp desc ;

#17.ALL DATA in ascending ORDER by Item_Outlet_Sales

select * from blinkit_online bo order by item_outlet_sales asc ;

#18. ALL DATA in ascending by Item_Type 

select * from blinkit_online bo order by item_type asc ;

#19. DATA of item_type dairy & Meat

select * from blinkit_online bo where item_type in ("Dairy","Meat")  ;

#20. ALL UNIQUE value of Outlet_Size 

select distinct outlet_size from blinkit_online bo ;

#21. ALL UNIQUE value of Outlet_Location_Type

select distinct outlet_location_type from blinkit_online bo ;

#22. ALL UNIQUE value of Outlet_Type 

select distinct outlet_type from blinkit_online bo ;

#23. count of number of items by Item_Type  and order it in descending order

select count(item_type) as count_iteam,item_type from blinkit_online bo 
group by item_type order by item_type  desc ;

#24. count of number of items by Outlet_Size and ordered it in ascending order 

select count(outlet_size) as count_outlet_size,outlet_size from blinkit_online bo 
group by outlet_size order by count_outlet_size asc ;

#25.count of number of items by Outlet_Type  and ordered it in descending order.

select count(outlet_type) as count_outlet_type,outlet_type from blinkit_online bo 
group by outlet_type order by count_outlet_type desc ;

#26.count of items by Outlet_Location_Type and order it indescending order

select count(outlet_location_type) as count_outlet_Location_Type,outlet_location_type from blinkit_online bo 
group by outlet_location_type order by count_outlet_Location_Type desc ;

#27. maximum MRP by Item_Type 

select max(item_mrp) as max_mrp , item_type from blinkit_online bo 
group by item_type order by max_mrp desc ;

#28. minimum MRP by Item_Type 

select min(item_mrp) as min_mrp , item_type from blinkit_online bo 
group by item_type order by min_mrp desc ;

#29.minimum MRP by Outlet_Establishment_Year and order it in descending order.

select min(item_mrp) min_mrp, outlet_establishment_year from blinkit_online bo 
group by outlet_establishment_year order by min_mrp desc ;

#30. show maximum MRP by Outlet_Establishment_Year and order it in descending order.

select max(item_mrp) max_mrp, outlet_establishment_year from blinkit_online bo 
group by outlet_establishment_year order by max_mrp desc ;

#31.average MRP by Outlet_Size and order it in descending order.
select avg(item_mrp) avg_mrp , outlet_size from blinkit_online bo
group by outlet_size order by avg_mrp desc;

#33.Average MRP by Outlet_Type and ordered in ascending order.

select avg(item_mrp) avg_mrp , outlet_type from blinkit_online bo
group by outlet_type order by avg_mrp desc;

#34.show maximum MRP by Outlet_Type
select max(item_mrp) max_mrp , outlet_type from blinkit_online bo
group by outlet_type order by max_mrp desc;

#35. maximum Item_Weight by Item_Type 

select max(item_weight) max_weight , item_type from blinkit_online bo
group by item_type order by max_weight desc;

#36. maximum Item_Weight by Outlet_Establishment_Year 

select min(item_weight) min_weight , item_type from blinkit_online bo
group by item_type order by min_weight desc;

#37. minimum Item_Weight by Outlet_Type 

select min(item_weight) min_weight , outlet_type from blinkit_online bo
group by outlet_type order by min_weight desc;

#38.average Item_Weight by Outlet_Location_Type and arrange it by descending order
select avg(item_weight) avg_weight , outlet_location_type from blinkit_online bo
group by outlet_location_type order by avg_weight desc;

#39.maximum Item_Outlet_Sales by Item_Type

select max(item_outlet_sales) max_outlet_sales , item_type from blinkit_online bo
group by item_type order by max_outlet_sales desc; 

#40. minimum Item_Outlet_Sales by Item_Type 

select min(item_outlet_sales) mini_outlet_sales , item_type from blinkit_online bo
group by item_type order by mini_outlet_sales desc; 

#41.minimum Item_Outlet_Sales by Outlet_Establishment_Year 
select min(item_outlet_sales) as min_outlet_sales , outlet_establishment_year from blinkit_online bo
group by outlet_establishment_year order by min_outlet_sales desc ;

#42.maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order

select max(item_outlet_sales) as max_outlet_sales , outlet_establishment_year from blinkit_online bo
group by outlet_establishment_year order by max_outlet_sales desc ;

#43.average Item_Outlet_Sales by Outlet_Size and order it it descending order

select avg(item_outlet_sales) as avg_outlet_sales,outlet_size from blinkit_online bo
group by outlet_size order by avg_outlet_sales desc ;

#44.average Item_Outlet_Sales by Outlet_Type
select avg(item_outlet_sales) avg_outlet_sales , outlet_type from blinkit_online bo 
group by outlet_type order by avg_outlet_sales desc ;

#45. maximum Item_Outlet_Sales by Outlet_Type 

select max(item_outlet_sales) max_outlet_sales , outlet_type from blinkit_online bo 
group by outlet_type;

#46.total Item_Outlet_Sales by Item_Type 

select sum(item_outlet_sales) total_outlet_sales , outlet_type from blinkit_online bo 
group by outlet_type order by total_outlet_sales desc ;

#47. total Item_Outlet_Sales by Item_Fat_Content 

select sum(item_outlet_sales) total_outlet_sales , item_fat_content from blinkit_online bo 
group by item_fat_content order by total_outlet_sales desc ;

#48. maximum Item_Visibility by Item_Type

select round(max(item_visibility),2) as max_visibility,item_type from blinkit_online bo 
group by item_type ;

#49.Minimum Item_Visibility by Item_Type 

select round(min(item_visibility),2) as max_visibility,item_type from blinkit_online bo 
group by item_type ;

#50. total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 

select sum(item_outlet_sales) total_outlet_sales,item_type ,outlet_location_type from blinkit_online bo 
group by item_type,outlet_location_type having outlet_location_type ="Tier 1" order by total_outlet_sales desc ;

#51.total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

select sum(item_outlet_sales) total_outlet_sales,item_type,item_fat_content from blinkit_online bo 
group by item_type,item_fat_content having item_fat_content in ("Low Fat","LF") order by total_outlet_sales desc;

# maxmum sale by outlet 

select outlet_size ,outlet_type , max(item_outlet_sales) over(partition by outlet_type order by item_outlet_sales desc) as max_outlet_sales 
from blinkit_online bo order by max_outlet_sales desc ;

select * from blinkit_online bo ;

#Calculate the cumulative sales  for each product  across all outlets using a window function.

SELECT 
    Item_Identifier, 
    Item_Outlet_Sales, 
    SUM(Item_Outlet_Sales) OVER (PARTITION BY Item_Identifier) AS Cumulative_Sales
FROM 
    blinkit_online bo ;

#Rank products  within each outlet  based on their sales  in descending order.

select outlet_identifier,item_identifier ,item_outlet_sales , rank() over(partition by outlet_identifier order by item_outlet_sales desc) from blinkit_online bo ;

#Determine the running total of sales  for each product type  across all outlets.

select distinct item_identifier,item_type ,outlet_identifier ,sum(item_outlet_sales) over(partition by item_type order by item_outlet_sales desc ) as sales_each_product
from blinkit_online bo order by sales_each_product desc ;

#Find the average sales  of each product  in each outlet  using a window function.

select outlet_identifier,item_outlet_sales,item_type ,avg(item_outlet_sales) over(partition by item_type,outlet_identifier) avg_sales_product from blinkit_online bo ;

#Use a window function to calculate the difference between each product's sales  and the average sales of that product type  across all outlets.

SELECT 
    Item_Identifier, 
    Outlet_Identifier, 
    Item_Outlet_Sales, 
    AVG(Item_Outlet_Sales) OVER (PARTITION BY Item_Identifier) AS Avg_Sales_Product,
    Item_Outlet_Sales - AVG(Item_Outlet_Sales) OVER (PARTITION BY Item_Identifier) AS Sales_Difference
FROM 
    blinkit_online bo ;


#Identify the top 3 products  with the highest sales in each store using a window function.

   select * from(
   select item_type,item_outlet_sales,rank() over(partition by item_type order by item_outlet_sales desc) highest_sales_product
from blinkit_online bo)t where t.highest_sales_product<=3;


#Compute the percentage contribution of each product's sales to the total sales within the respective outlet .

SELECT 
    Outlet_Identifier,
    Item_Identifier,
    Item_Outlet_Sales,
    SUM(Item_Outlet_Sales) OVER (PARTITION BY Outlet_Identifier) AS Total_Sales_Outlet,
    (Item_Outlet_Sales / SUM(Item_Outlet_Sales) OVER (PARTITION BY Outlet_Identifier)) * 100 AS Sales_Percentage_Contribution
FROM 
    blinkit_online bo ;

#Create a window function to display the minimum and maximum Item_Outlet_Sales for each Item_Type within each outlet .

select item_identifier,item_type , max(item_outlet_sales) over(partition by item_type ) max_sales,
min(item_outlet_sales) over(partition by item_type ) min_sales
from blinkit_online bo ;

#Determine the lag and lead sales for each product  within its outlet (Outlet_Identifier).


select item_identifier,outlet_identifier,item_outlet_sales , lag(item_outlet_sales) over(partition by item_type) lag_sales,
lead(item_outlet_sales) over(partition by item_type) lead_sales
from blinkit_online bo ;

#Find the total sales for each product in each outlet and then rank them based on the total sales using CTE.

with total_sales as ( select *, sum(item_outlet_sales) over(partition by item_identifier) total_sales from blinkit_online bo 
) 
select* from(
select outlet_identifier,outlet_establishment_year,rank() over(partition by outlet_identifier order by total_sales desc ) rank_outlet  
from total_sales)t where rank_outlet<=3;

select * from blinkit_online bo ;

#find product which salse high in medium and small and high

with rank_product as 
(select Item_Identifier,
outlet_size,
item_outlet_sales,
Outlet_Identifier, 
ROW_NUMBER() over(partition by outlet_size order by item_outlet_sales desc) rank_salse 
from blinkit_online bo 
where outlet_size in ("Medium","Small","High"))
select Item_Identifier,outlet_size,item_outlet_sales,rank_salse,Outlet_Identifier from rank_product where rank_salse<=3 
ORDER BY 
    Outlet_Size, rank_salse;
;


select * from blinkit_online bo ;


select item_weight from blinkit_online bo where item_weight is null ;

select avg(item_weight) from blinkit_online bo  ;

# fill null value in weight column 
update blinkit_online 
set item_weight=12.15
where item_weight is null ;


SELECT outlet_size FROM blinkit_online bo; WHERE outlet_size = '';

update blinkit_online 
set outlet_size="Medium"
WHERE outlet_size = '';

select count(*) as num , outlet_size from blinkit_online bo
group by outlet_size order by num desc  ;


select * from blinkit_online bo ;

#hights selling prodiuct name in 3 category citys 
with city_sales as 
(select outlet_location_type ,item_outlet_sales, item_type,row_number() over(partition by outlet_location_type order by item_outlet_sales desc ) as row_rank  from blinkit_online bo 
where outlet_location_type in ("Tier 1","Tier 2","Tier 3"))
select row_rank,outlet_location_type,item_type,item_outlet_sales from city_sales where row_rank <=3;

#get max weight of each product 

with max_weigh as (
select distinct item_identifier,item_type,item_mrp ,max(item_weight) 
over(partition by item_type order by item_weight desc) max_p_weight from blinkit_online bo)
select distinct item_type,max_p_weight from max_weigh;

select * from blinkit_online bo ;                                                                                                                              

#years vise sales most hight product name :
select * from (
select item_outlet_sales,outlet_establishment_year,item_type,
dense_rank() over(partition by outlet_establishment_year order by item_outlet_sales desc) rank_years
from blinkit_online bo) t where t.rank_years<=3 order by item_outlet_sales desc ;




