use `goit-rdb-hw-03`;

SELECT order_id as id, date, YEAR(date) as year, MONTH(date) as month, DAY(date) as day
FROM orders;

SELECT order_id as id, date, ADDDATE(date, INTERVAL 1 DAY) as new_date
FROM orders;

SELECT order_id as id, date, UNIX_TIMESTAMP(date) as timestamp
FROM orders;

SELECT COUNT(*) 
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT 
	order_id AS id, 
    date, 
    JSON_OBJECT('id', order_id, 'date', date) AS json_obj
FROM orders;
