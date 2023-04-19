create database md4_ss2_bt2;
use md4_ss2_bt2;
create table customer(
	cId int primary key auto_increment,
    cName varchar(200),
    cAge int 
);
create table orders(
	oId int primary key auto_increment,
    cId int ,
    foreign key (cId) references customer(cId),
    oDate datetime default now(),
    oTotalPrice float 
);
create table product (
	pId int primary key auto_increment,
    pName varchar (200),
    pPrice float 
);
create table oderdetal (
	oId int ,
    foreign key (oId) references orders(oId),
    pId int ,
    foreign key (pId) references product(pId)
);