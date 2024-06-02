use outfitters;

create table customers(
customerId int auto_increment,
first_name varchar(20),
last_name varchar(20),
phone_number varchar(12),
gender varchar(6),
age int,
address varchar(150),

primary key (customerId)
);


create table shoes(
shortId int auto_increment,
name varchar(20),
size int,
gender varchar(6),
price int,
color varchar(10),
material varchar(10),
quantity int,

primary key(shortId)
);

create table shirts(
shirtId int auto_increment,
name varchar(20),
size char,
gender varchar(6),
type varchar(10),
price int,
color varchar(10),
material varchar(10),
quantity int,

primary key (shirtId)
);

create table bottom_Wear(
itemId int auto_increment,
name varchar(20),
size char,
gender varchar(6),
type varchar(10),
price int,
color varchar(10),
material varchar(10),
quantity int,

primary key (itemId)
);

create table accessories(
accessory_id int auto_increment,
name varchar(20),
size char,
gender varchar(6),
type varchar(10),
price int,
color varchar(10),
material varchar(10),
quantity int,

primary key (accessory_id)
);
