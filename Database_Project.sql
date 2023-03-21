
create table ROLE(
role_id number,
role_name varchar2(20),
description varchar2(50),
primary key(role_id));


create table user_info(
user_id number,
first_name varchar2(20),
last_name varchar2(20),
user_name varchar2(30),
email varchar2(256),
password varchar2(50),
phone varchar2(15),
role_id number,
primary key(user_id),
foreign key(role_id) references ROLE(role_id)
);


create table ROOM(
room_id number,
room_no number,
room_name varchar2(40),
room_image varchar2(256),
per_day_price number,
description varchar2(50),
capacity number,
category varchar2(20),
type varchar2(10),
primary key(room_id));



create table orders(
order_id number,
room_id number,
date_of_checking date,
date_of_checkout date,
user_id number,
tax number,
discount number,
total number,
note varchar2(60),
payment_method varchar2(30),
primary key(order_id),
foreign key(room_id) references ROOM(room_id),
foreign key(user_id) references user_info(user_id));


insert into role(role_id,role_name,description)values(1, 'Admin', 'Can access and manage all system features.');
insert into role(role_id,role_name,description)values(2, 'Guest', 'Has limited access to view system information.');



insert into user_info(user_id, first_name, last_name, user_name, email, password, phone, role_id) VALUES(1, 'John', 'Doe', 'johndoe', 'johndoe@example.com', 'password123', '555-1234', 1);
insert into user_info(user_id,first_name,last_name,user_name,email,password,phone,role_id)values(2, 'Jane', 'Smith', 'janesmith', 'janesmith@example.com', 'mypassword', '555-5678', 2);


select * from user_info;