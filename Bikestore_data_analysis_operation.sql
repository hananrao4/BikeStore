Select soi.order_id,so.order_date,sc.first_name+''+sc.last_name as customer_full_name,sc.city,sc.state,pd.product_name,soi.quantity as total_unit,
sum(soi.quantity*soi.list_price) as revenue,pc.category_name,pb.brand_name,ss.store_name,sss.first_name+''+sss.last_name as sales_rep from sales.orders as so
inner join sales.customers as sc
ON so.customer_id=sc.customer_id
inner join sales.order_items as soi
ON so.order_id=soi.order_id
inner join production.products as pd
ON soi.product_id=pd.product_id
inner join production.categories as pc
ON pd.category_id=pc.category_id
inner join production.brands as pb
ON pd.brand_id=pb.brand_id
inner join sales.stores as ss
ON so.store_id=ss.store_id
inner join sales.staffs as sss
ON so.staff_id=sss.staff_id
Group by soi.order_id,so.order_date,sc.first_name+''+sc.last_name,sc.city,sc.state,pd.product_name,soi.quantity,pc.category_name,pb.brand_name,ss.store_name,sss.first_name+''+sss.last_name
order by order_id asc 

