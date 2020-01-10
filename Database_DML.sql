/*
Name: Arpandeep Singh
ID:040950261
Professor Name: Kumari Gurusamy
*/

----------------|
--DML INSERTS---|
----------------|
DELETE FROM deliveryboy_area;
DELETE FROM order_items;
DELETE FROM menu_items;
DELETE FROM category;
DELETE FROM orders;
DELETE FROM customers;
DELETE FROM deliveryboy;
DELETE FROM area;
DELETE FROM status;


--1)inserting data in 'Category' table

Select * from category;
INSERT INTO category (id,name) VALUES(1,'Veg');
INSERT INTO category (id,name) VALUES(2,'Non-Veg');

--2)inserting dishes into menu
Select * from menu_items;
INSERT INTO menu_items (item_id,name,category,price) VALUES(1,'Kadhai Paneer',1,13.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(2,'Dal Makhni',1,12.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(3,'Paneer Tikka Masala',1,14.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(4,'Butter Chicken',2,17.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(5,'Chiken Tikka Masala',2,16.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(6,'Chicken Curry',2,13.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(7,'Matar Paneer',1,12.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(8,'Tandoori Chicken',2,19.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(9,'Shahi Paneer',1,17.95);
INSERT INTO menu_items (item_id,name,category,price) VALUES(10,'Chilly Chicken',2,18.95);

--3)inserting data of Delivery Boys;
select * from deliveryboy;
INSERT INTO DeliveryBoy (id,name,contact) VALUES(1,'Batman','3437771234');
INSERT INTO DeliveryBoy (id,name,contact) VALUES(2,'Superman','3879567487');
INSERT INTO DeliveryBoy (id,name,contact) VALUES(3,'Ironman','6137848562');
INSERT INTO DeliveryBoy (id,name,contact) VALUES(4,'Spiderman','6134590367');
INSERT INTO DeliveryBoy (id,name,contact) VALUES(5,'Hulk','3438169348');


--4)inserting area names
select* from area;
INSERT INTO area (area_code,area_name) VALUES(1,'Barrhaven');
INSERT INTO area (area_code,area_name) VALUES(2,'Nepean');
INSERT INTO area (area_code,area_name) VALUES(3,'Stittsville');
INSERT INTO area (area_code,area_name) VALUES(4,'Orléans');
INSERT INTO area (area_code,area_name) VALUES(5,'Kanata');
INSERT INTO area (area_code,area_name) VALUES(6,'Bayshore');

---5)inserting status
Select * from status;
INSERT INTO status (status_id,status) VALUES(1,'New');
INSERT INTO status (status_id,status) VALUES(2,'Processing');
INSERT INTO status (status_id,status) VALUES(3,'Out for Delivery');
INSERT INTO status (status_id,status) VALUES(4,'Delivered');

---6)inserting customer's data
Select * from customers;
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(1,'Arpandeep Singh','3437776929','singh.arpandeep@gmail.com','135 Lamplighters Drive',1);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(2,'Simarjot Singh','3438763897','singh.simarjot@yahoo.in','1985 Woodroffe Ave',2);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(3,'Pushpvir Singh','6138976263','pushpvir@outlook.com','2643 St Joseph Blvd',4);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(4,'Harry','3438975497','harry25@bhangu.com','1099 Longfields Dr',2);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(5,'Moly','6136382875','moly@cheema.in','1000 Palladium Dr',5);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(6,'Agam','3438592716','agam.bindra@gmail.com','5357 Fernbank Rd',3);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(7,'Mansimarat Singh','6137835670','pancham13@bindra.com','100 Bayshore Dr',6);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(8,'Manik Gupta','9914960667','manikgupta257@gmail.com','110 Place d-Orléans',4);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(9,'Ramit Goel','8139837618','goel.ramit@yahoo.com','3570 Strandherd Dr',1);
INSERT INTO customers (customer_id,name,contact,email,address,area) VALUES(10,'Harnoor Saini','3438759376','harnnor@saini.com','145 Woodridge Crescent',6);

--7)inserting areas assigned to delivery boys
Select * from deliveryBoy_area;
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(1,5);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(1,3);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(2,1);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(2,4);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(3,4);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(3,3);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(4,1);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(4,3);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(5,3);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(5,2);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(6,2);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(6,5);
INSERT INTO deliveryBoy_area (area_code,deliveryboy) VALUES(2,5);

--inserting data into orders
SELECT * FROM orders;
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(101,2,'2019-03-20','09:26:53',3,3);
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(102,5,'2019-03-21','12:20:45',5,2);
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(103,3,'2019-03-21','12:36:27',2,4);
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(104,4,'2019-03-22','17:30:34',1,1);
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(105,1,'2019-03-23','18:34:45',4,4);
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(106,4,'2019-03-26','19:26:53',3,2);
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(107,2,'2019-03-26','20:26:53',2,1);
INSERT INTO orders (order_id,customer_id,date,time,delivery_boy,status_id) VALUES(108,5,'2019-03-26','21:26:39',5,2);

--inserting order-items
SELECT * FROM order_items;
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (101,5,2,16.95,33.90);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (101,7,1,12.95,12.95);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (102,1,3,13.95,41.85);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (103,8,2,19.95,39.90);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (103,2,1,12.95,12.95);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (104,1,1,13.95,13.95);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (104,3,4,14.95,59.80);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (104,6,1,13.95,13.95);
INSERT INTO order_items (order_id,item_id,quantity,list_price,extended_price) VALUES (105,2,1,12.95,12.95);

---------------|
--DML QUERIES--|
---------------|

--DISTINCT
SELECT DISTINCT item_id FROM order_items ORDER BY item_id ;

---WHERE and SUBQUERY
---select order details that are either delivered or out for delivery
SELECT order_id,customer_id,status_id FROM orders 
WHERE 
status_id= (SELECT status_id from status WHERE status ilike '%Out for delivery%')
OR 
status_id= (SELECT status_id from status WHERE status ilike '%Delivered%');

---Select number of orders placed per customer_id
SELECT count(order_id) as ordercount,customer_id from orders
GROUP BY customer_id
ORDER BY ordercount DESC;

--COUNT
--total number of order items recieved
SELECT COUNT(*) AS numoforders FROM order_items;

--Select delivery boy and its area where area code is 3;
SELECT deliveryboy ,area_code AS Area FROM deliveryboy_area WHERE area_code=3;

---total  number of orders per day
SELECT COUNT(*) AS numoforders ,date FROM orders GROUP BY date ORDER BY date;

--Total number of orders per status
SELECT COUNT(*) AS total_orders,status
FROM customer_orderv GROUP BY status;

--all food items between whose price is greater than $15
SELECT name,price from menu_items WHERE price>15;

--total sales till now
SELECT SUM(extended_price) AS totalsales from order_items;

--Using JOINS
--select all delivery boys that delivers in 'Nepean' area.
SELECT deliveryboy.name AS deliveryboy,area.area_name AS area
FROM deliveryboy_area 
JOIN deliveryboy ON deliveryboy.id=deliveryboy_area.deliveryboy
JOIN area ON area.area_code = deliveryboy_area.area_code
WHERE area.area_name LIKE 'Nepean%';

---HAVING 
--total number of orders per area
SELECT count(*),area.area_name
FROM orders
JOIN customers ON customers.customer_id=orders.customer_id
JOIN status ON status.status_id=orders.status_id
JOIN area ON area.area_code=customers.area
GROUP BY area.area_name
HAVING count(*)>=2;


---UNION 
---for example company wants to send a text message to all the delivery boys as well as customers for its recent delivery policy change. 
---to get all the contacts :
SELECT contact from customers
UNION
SELECT contact from deliveryboy;


---VIEWS and SUBQUERY
---Selecting customers that placed maximum orders
SELECT customer_id FROM customer_total_orders ---customer_total_orders is the view created in DDL.sql
WHERE ordercount=(SELECT MAX(ordercount) FROM customer_total_orders);

---Select all Non-Vegeterian food items;
SELECT name FROM menu_items WHERE category=(SELECT id FROM category WHERE name ILIKE 'non-veg%');


















