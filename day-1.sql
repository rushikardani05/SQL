create table products
(
	product_id int,
	product_name varchar(50),
	price float,
	released_date date
);

insert into products (product_id,product_name,price,released_date) 
values (1,'Motorola g62',1999.99,to_date('10-01-2004','dd-mm-yyyy'));
insert into products (product_id,product_name,price,released_date) 
values (1,'Macbook',9999.99,to_date('25-01-2004','dd-mm-yyyy'));
insert into products (product_id,product_name,price,released_date) 
values (1,'Asus zenbook',99999.99,to_date('10-05-2024','dd-mm-yyyy'));
insert into products (product_id,product_name,price,released_date) 
values (1,'realme tech buds',999.99,to_date('14-05-2004','dd-mm-yyyy'));

select * from products;

select product_name from products where price>1000;

select product_name,price from products where released_date > '10-05-2005';

select product_name from products where to_char(released_date, 'yyyy') = '2024';

select * from products where extract(year from released_date) > '2020';

select product_name as product from products where price>1000; -- alias(product) of (product_name)

