/* Number of items on the menu */

SELECT COUNT(menu_item_id) AS count_of_menu_items

FROM menu_items;

/* What are the least and most expensive items in the menu table */

SELECT item_name,
       price
FROM menu_items

ORDER BY price DESC;

/* How many Italian dishes are on the menu? */ 

SELECT item_name,
       category,
       price
FROM menu_items

WHERE category = 'Italian';

/* What are the least and most expensive Italian dishes on the menu? */

SELECT COUNT(*) AS count_of_italian_menu_items

FROM menu_items

WHERE category = 'Italian';

/* How many dishes are in each category? */

SELECT category,
       COUNT(menu_item_id) AS num_of_items

FROM menu_items

GROUP BY category;

/*  What is the average dish price within each category? */

SELECT category,
       AVG(price) AS price_per_category
FROM menu_items

GROUP BY category;

