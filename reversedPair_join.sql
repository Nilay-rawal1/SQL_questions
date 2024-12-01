create database SqlTest;
use SqlTest;
create table pairs(
A int, B int);

insert into pairs values(1,2),(2,4),(2,1),(3,2),(5,6),(6,5),(7,9);
select * from pairs;
-- remove reversed pairs
-- METHOD 1: 
select lt.* from pairs lt left join pairs rt on lt.A=rt.B and lt.B=rt.A where rt.A 
is NULL  or lt.A<rt.A;
