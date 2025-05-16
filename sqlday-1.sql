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

select count(*) from products where price > 1000

select sum(price) from products

select avg(price) from products

--update/modify

update products set price = 1500 where product_name = 'realme tech buds'

update products set price = 1500, product_id = 2 where product_name = 'realme tech buds'

select * from products;

update products set price = 5000 where product_name like 'Mo%'

update products set price = 1200 where product_name like '%buds%'

--delete data in table
delete from products where product_name = 'Macbook'

truncate table products -- faster than delete and use when you need to delete whole table data

--new table from existing table
create table products_rk
as
select * from products

select * from products_rk

--remove the whole table from database
drop table products_rk

drop table if exists products_rk 

--modify the structure of table
create table products_bkp
as
select * from products

select * from products_bkp

alter table products_bkp rename to products_backup --rename bkp to backup

select * from products_backup










