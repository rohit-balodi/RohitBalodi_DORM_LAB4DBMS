create database if not exists `orders_directory`;
use orders_directory;

/*1*/
Create Table IF NOT EXISTS Supplier (Supp_ID int, Supp_Name VarChar(50), Supp_City VarChar(50), Supp_Phone VarChar(50), Primary Key (Supp_ID));

Create Table IF NOT EXISTS customer (CUS_ID	int, CUS_Name	VarChar(20), CUS_Phone VarChar(20), CUS_City VarChar(30), Cus_Gender Char(1), primary key (CUS_ID));

Create Table IF NOT EXISTS category (Cat_ID int, Cat_Desc VarChar(20), Primary Key (Cat_ID));

Create Table IF NOT EXISTS product (Pro_ID int, PRO_Name VarChar(20) NOT NULL DEFAULT 'Dummy', PRO_Desc VarChar(60), Cat_ID int, primary key (Pro_ID), Foreign Key (Cat_ID)References Category(Cat_ID));

CREATE TABLE IF NOT EXISTS supplier_pricing (PRICING_ID INT NOT NULL, PRO_ID INT NOT NULL, SUPP_ID INT NOT NULL, SUPP_PRICE INT DEFAULT 0, PRIMARY KEY (PRICING_ID),FOREIGN KEY (PRO_ID) REFERENCES PRODUCT (Pro_ID), FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER(SUPP_ID));

Create Table IF NOT EXISTS `order` (Ord_ID int, Ord_Amount int NOT NULL, ORD_Date Date NOT NULL, CUS_ID	int, Pricing_ID int, Primary Key (Ord_ID), Foreign Key (Cus_ID) References Customer(Cus_ID), Foreign Key (Pricing_ID) References supplier_pricing(Pricing_ID));

create table rating (RAT_ID int, ORD_ID int, RAT_RATSTARS int NOT NULL, Primary Key (Rat_ID), Foreign Key (Ord_ID) references `Order`(ORD_ID));

/*2*/
INSERT INTO SUPPLIER VALUES(1,"Rajesh Retails","Delhi",'1234567890');
INSERT INTO SUPPLIER VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO SUPPLIER VALUES(3,"Knome products","Banglore",'9785462315');
INSERT INTO SUPPLIER VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO SUPPLIER VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');
select * from SUPPLIER;

INSERT INTO CUSTOMER VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO CUSTOMER VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO CUSTOMER VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO CUSTOMER VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO CUSTOMER VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');
select * from CUSTOMER;

INSERT INTO CATEGORY VALUES( 1,"BOOKS");
INSERT INTO CATEGORY VALUES(2,"GAMES");
INSERT INTO CATEGORY VALUES(3,"GROCERIES");
INSERT INTO CATEGORY VALUES (4,"ELECTRONICS");
INSERT INTO CATEGORY VALUES(5,"CLOTHES");
select * from CATEGORY;

INSERT INTO PRODUCT VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
INSERT INTO PRODUCT VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
INSERT INTO PRODUCT VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
INSERT INTO PRODUCT VALUES(4,"OATS","Highly Nutritious from Nestle",3);
INSERT INTO PRODUCT VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
INSERT INTO PRODUCT VALUES(6,"MILK","1L Toned MIlk",3);
INSERT INTO PRODUCT VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
INSERT INTO PRODUCT VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
INSERT INTO PRODUCT VALUES(9,"Project IGI","compatible with windows 7 and above",2);
INSERT INTO PRODUCT VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
INSERT INTO PRODUCT VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
INSERT INTO PRODUCT VALUES(12,"Train Your Brain","By Shireen Stephen",1);
select * from PRODUCT;

INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);
select * from SUPPLIER_PRICING;

INSERT INTO `ORDER` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `ORDER` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2021-09-17",2,14);
select * from `ORDER`;

INSERT INTO RATING VALUES(1,101,4);
INSERT INTO RATING VALUES(2,102,3);
INSERT INTO RATING VALUES(3,103,1);
INSERT INTO RATING VALUES(4,104,2);
INSERT INTO RATING VALUES(5,105,4);
INSERT INTO RATING VALUES(6,106,3);
INSERT INTO RATING VALUES(7,107,4);
INSERT INTO RATING VALUES(8,108,4);
INSERT INTO RATING VALUES(9,109,3);
INSERT INTO RATING VALUES(10,110,5);
INSERT INTO RATING VALUES(11,111,3);
INSERT INTO RATING VALUES(12,112,4);
INSERT INTO RATING VALUES(13,113,2);
INSERT INTO RATING VALUES(14,114,1);
INSERT INTO RATING VALUES(15,115,1);
INSERT INTO RATING VALUES(16,116,0);
select * from RATING;

/*3*/
select c.Cus_Gender, COUNT(o.Cus_ID) As CountCustomer from `order` o INNER JOIN (select pricing_id, SUM(SUPP_PRICE) As tPrice from supplier_pricing GROUP BY pricing_id HAVING tPrice >= 3000) sp ON sp.pricing_id = o.pricing_id INNER JOIN Customer c ON c.Cus_ID = o.Cus_ID GROUP BY C.Cus_Gender;

/*4*/
select product.pro_name, `order`.* from `order`, supplier_pricing, product where `order`.cus_id=2 and `order`.pricing_id=supplier_pricing.pricing_id and supplier_pricing.pro_id=product.pro_id;

/*5*/
select * from Supplier where Supp_ID IN (select SUPP_ID from (select SUPP_ID, COUNT(SUPP_ID) as Cnt from Supplier_pricing GROUP BY Supp_ID) ss where ss.Cnt > 1);
 
 /*6*/
select pp.Cat_ID, c.cat_Desc , pp.Pro_name , MIN(SUPP_PRICE) MinPrice from supplier_pricing ss INNER JOIN PRODUCT pp ON pp.Pro_ID = ss.Pro_ID INNER JOIN Category c ON c.cat_Id = pp.Cat_ID GROUP BY pp.Cat_ID;

/*7*/
select pro_id,pro_name from product as p where pro_id in (select pro_id from supplier_pricing as sp where pricing_id in (select pricing_id from `order` as o where ord_date > "2021-10-05"));

/*8*/
select customer.cus_name,customer.cus_gender from customer where customer.cus_name like 'A%' or customer.cus_name like '%A';

/*9*/
delimiter $$
create procedure Rating_procedure()
begin
select supp_id,supp_name,Avg_rating,
case when Avg_rating =5 then 'Excellent Service'
when Avg_rating > 4 then 'Good Service'
when Avg_rating >2 then 'Average Service'
else 'Poor Service'
end as Type_of_Service from (select sp.supp_id,s.supp_name,avg(r.rat_ratstars) as Avg_rating
from rating as r ,`order` as o,supplier_pricing as sp, supplier as s where r.ord_id = o.ord_id and sp.pricing_id = o.pricing_id and s.supp_id = sp.supp_id group by sp.supp_id ) as T1;
end $$
delimiter ;

call Rating_procedure();
        