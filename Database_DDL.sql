/*
Name: Arpandeep Singh
ID:040950261
Professor Name: Kumari Gurusamy
*/
DROP INDEX IF EXISTS idx_orders;
DROP INDEX IF EXISTS idx_menu;
DROP INDEX IF EXISTS idx_area;
DROP INDEX IF EXISTS idx_category;
DROP VIEW IF EXISTS customer_total_orders;
DROP VIEW IF EXISTS customer_orderv;
DROP TABLE IF EXISTS deliveryboy_area;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS deliveryboy;
DROP TABLE IF EXISTS area;
DROP TABLE IF EXISTS status;


CREATE TABLE Area(
    Area_Code INTEGER NOT NULL,
	Area_name  varchar(55) NOT NULL,
	CONSTRAINT pk_Area PRIMARY KEY(Area_Code)  
);
CREATE TABLE DeliveryBoy(
    id INTEGER NOT NULL,
	Name VARCHAR(55) NOT NULL,
	contact varchar(10) NOT NULL,
	CONSTRAINT pk_deliveryboy PRIMARY KEY(id)
);

CREATE TABLE DeliveryBoy_Area(
   Area_Code INTEGER,
   DeliveryBoy INTEGER ,
   CONSTRAINT fk1_Area FOREIGN KEY(Area_Code) REFERENCES Area(Area_Code),
   CONSTRAINT fk2_DeliveryBoy FOREIGN KEY(DeliveryBoy) REFERENCES DeliveryBoy(id),
   CONSTRAINT pk_DeliveryBoy_Area PRIMARY KEY(Area_Code,DeliveryBoy)
  
);
CREATE TABLE customers(
   Customer_id INTEGER NOT NULL,
   name VARCHAR(55) NOT NULL,
   contact varchar(10) NOT NULL,
   Email VARCHAR(30),
   Address VARCHAR(100) NOT NULL,
   Area INTEGER NOT NULL,
   CONSTRAINT pk_customers PRIMARY KEY(customer_id),
   CONSTRAINT fk_customers FOREIGN KEY(Area) REFERENCES Area(Area_Code)	
);

CREATE TABLE Category(
    ID INTEGER NOT NULL,
	name VARCHAR(55) NOT NUll,
	CONSTRAINT pk_category PRIMARY KEY(id)
);

CREATE TABLE Menu_items(
    item_id INTEGER NOT NULL,
	name VARCHAR(55) NOT NULL,
	Category INTEGER NOT NULL,
	price NUMERIC(6,2) NOT NULL,
	
	CONSTRAINT pk_menu PRIMARY KEY(item_id),
	CONSTRAINT fk_menu FOREIGN KEY(Category) REFERENCES Category(id)	
);

CREATE TABLE status(
    status_id INTEGER NOT NULL,
	status varchar NOT NULL,
	CONSTRAINT pk_status PRIMARY KEY(status_id)	
);

CREATE TABLE orders(
    order_id INTEGER NOT NULL,
	Customer_id INTEGER NOT NULL,
	Date DATE ,
	Time TIME,
	Delivery_Boy INTEGER ,
	Status_id INTEGER,
	
	CONSTRAINT fk_delivery_boy FOREIGN KEY(Delivery_Boy) REFERENCES  DeliveryBoy(id),
	CONSTRAINT fk_status FOREIGN KEY(Status_id) REFERENCES status(status_id),
	CONSTRAINT pk_OrderId PRIMARY KEY(order_id),
	CONSTRAINT fk_customers FOREIGN KEY(Customer_id) REFERENCES customers(Customer_id)
);
CREATE TABLE Order_Items(
	Order_id INTEGER NOT NULL,
	Item_id INTEGER NOT NULL,
	Quantity INTEGER NOT NULL,
	List_price NUMERIC(6,2),
	Extended_price NUMERIC(8,2),
	CONSTRAINT pk_order_lines PRIMARY KEY(Order_Id,Item_id),
	CONSTRAINT fk_orderid_lines FOREIGN KEY(order_id) REFERENCES orders(order_id),
	CONSTRAINT fk_itemid_lines FOREIGN KEY(item_id) REFERENCES menu_items(item_id)	
);

---VIEW FROM orders,customers,deliveryboy,status

CREATE VIEW customer_orderv AS
SELECT order_id,date,customers.customer_id,customers.name AS Customer,deliveryboy.name AS delieveryboy,customers.area ,area.area_name,status.status
FROM orders
JOIN customers ON customers.customer_id=orders.customer_id
JOIN deliveryboy ON deliveryboy.id=orders.delivery_boy
JOIN status ON status.status_id=orders.status_id
JOIN area ON area.area_code=customers.area;

---VIEW FROM number of total orders placed per customer

CREATE VIEW customer_total_orders as
SELECT count(order_id) as ordercount,customer_id from orders
GROUP BY customer_id
ORDER BY ordercount DESC;

---INDEXES

CREATE INDEX idx_orders
ON orders(customer_id,delivery_boy,status_id);

CREATE INDEX idx_menu
ON menu_items(name,price);

CREATE INDEX idx_area
ON area(area_name);

CREATE INDEX idx_category
ON category(name);
