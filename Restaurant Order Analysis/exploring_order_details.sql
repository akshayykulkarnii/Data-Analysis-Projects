/* View the order_details table.  */

SELECT * 
FROM order_details;

/* What is the date range of the table?*/

SELECT MIN(order_date),
       MAX(order_date)
FROM order_details;

/* How many orders were made within this date range? */

SELECT COUNT(DISTINCT order_id) AS total_orders_within_date_range

FROM order_details;

/* How many items were ordered within this date range? */

SELECT COUNT(item_id) AS items_ordered
FROM order_details;

/* Which orders had the most number of items? */

SELECT order_id,
       COUNT(item_id)
FROM order_details

GROUP BY order_id
ORDER BY COUNT(item_id) DESC;

/* How many orders had more than 12 items? */

SELECT order_id,
       COUNT(item_id) AS count_of_items
FROM order_details

GROUP BY order_id
HAVING 	COUNT(item_id) > 12;




