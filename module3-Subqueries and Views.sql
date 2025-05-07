use anandhu;
select country.Country_name, count(persons.Id) as personCount from country left join persons on country.Id = persons.country_Id group by country.Country_name;
select country.Country_name, count(persons.Id) as personCount from country left join persons on country.Id = persons.country_Id group by country.Country_name order by personCount desc;
select country.Country_name, avg(persons.Rating) as AvgRating from country join persons on country.Id = persons.country_Id group by country.Country_name having AvgRating > 3.0;
select country.Country_name from country join persons on country.Id = persons.country_Id group by country.Country_name having avg(persons.Rating) = (select avg(persons.Rating) from country join persons on country.Id = persons.country_Id where country.Country_name = "USA");
select Country_name from country where Population > (select avg(Population) from country);

create database Product;
use Product;
create table customer (
customer_id int primary key,
First_name varchar(20),
Last_name varchar(20),
Email varchar(50),
Phone_no varchar(10),
Address varchar(50),
City varchar(20),
State varchar(20),
Zip_code varchar(20),
Country varchar(20)
);

insert into customer values(1, 'Johnny', 'Depp', 'johnny.depp@gmail.com', '1234567890', '123 Elm Street', 'Los Angeles', 'California', '90001', 'US');
insert into customer values(2, 'Boby', 'Chemmanur', 'Chemmanurboby@gmail.com', '9876543210', 'kuruppam', 'Thrissur', 'Kerala', '68001', 'India');
insert into customer values(3, 'Alice', 'Brown', 'alice.brown@gmail.com', '3456789012', '789 Pine Road', 'New York', 'New York', '10001', 'US');
insert into customer values(4, 'George', 'Clark', 'george.clark@gmail.com', '8901234567', '246 Willow Way', 'London', 'England', 'EC1A 1BB', 'UK');
insert into customer values(5, 'Sophie', 'Lee', 'sophie.lee@gmail.com', '9012345678', '135 Kangaroo Rd', 'Sydney', 'New South Wales', '2000',"Australia");

create view customer_info as select concat(First_name,' ',Last_name) as Full_name,Email from customer;
select *from customer_info;
create view US_customers as select *from customer Where Country = 'US';
create view customer_details as select concat(First_name,' ',Last_name) as Full_name,Email,Phone_no,State from customer;
update customer set Phone_no = '9990009990' where State= "California";
select State,count(*) as customer_count from customer group by State having customer_count > 5;
select State,count(*) as Customer_Count from customer_details group by State;
select *from customer_details order by State asc;





