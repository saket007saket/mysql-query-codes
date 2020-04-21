show databases;
create database testdb1;#it is used to create database testdb1 in our mysqlserver
use testdb1;#we r using testdb1 database to ceate tables 
show tables;#since we are using testdb1 , so in testdb1 db we r checking all the tables present
create table firsttab (id integer, name varchar(10)); 
#here we creating firsttab table with id , name as column name and integer ,varchar are corresponding data types
describe firsttab;
#it is used check the scema of the table , contraints of the table we have created as firsttab in db testdb1
insert into firsttab values (1,'john');
#now we r inserting values corresponding to id,name column respectively
select * from firsttab;
#it is used to select all the rows from the table firsttab
insert into firsttab (id) values(3);
#it is another way to insert value in table but here we are iserting 3 in only in id column but not in name column so name calumn for this row automatically take null values
select * from firsttab;
SET SQL_SAFE_UPDATES = 0;
#when we run any update command like delete then then it throw an error to erroadicate that error we using this command

delete from firsttab where id=3;
#it is used to delete the row with id name=3
select * from firsttab;
update  firsttab set name = 'john';
#we r updating values of each row under name column with john
select * from firsttab;

