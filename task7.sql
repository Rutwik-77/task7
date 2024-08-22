-- 4) create 4 question on your data like above and solve


SELECT * from sales
SELECT * from customer
SELECT distinct state from customer
SELECT * from product


-- 1) create a report of all state, quantity, discount, profit 
--with following aggregation sum, avg, min, max, count
-- 1) Solution
-- with sum
select c.state , sum(s.quantity) as sum_qty, avg(s.discount) as avg_discount, max(s.profit) as max_profit 
, sum(s.discount) as sum_discount , min (s.quantity) as min_quantity
from sales as s
inner join customer as c
on c.customer_id = s.customer_id
group by c.state

	
-- 2) get data of all stste and city avg customer age
-- 2) solution
SELECT state , city , avg(age) from customer
GROUP by state, city


-- 3) get data of 2017 to 2018 with product name and sales per quantity
-- 3) solution
select s.order_date , sum(s.sales)/sum(s.quantity) as sales_per_quantity,p.product_name from sales as s
inner join product as p
on s.product_id = p.product_id
where order_date BETWEEN '2017-01-01' and '2018-12-31'
group by p.product_name , s.order_date





