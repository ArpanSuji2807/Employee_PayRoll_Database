---uc1
create database payroll_service;

use payroll_service;

--uc2
create table Employee_payroll(
Id int primary key identity(1,1),
Name varchar(150),
salary decimal,
startdate Date
);

--uc3
Insert into Employee_payroll values
('Arpan',50000,'2022.05.30'),
('Raju',36000,'2022.04.23'),
('Umesh',45000,'2022.03.15');

--uc4
select * from Employee_payroll;

--uc5
select * from Employee_payroll where Id in (1,2);

select * from Employee_payroll where name like 'Ar%';

select salary from Employee_payroll where name like 'Ra%';

select StartDate  from Employee_Payroll WHERE (StartDate BETWEEN '2022-03-15' AND GETDATE());

--uc6
Alter table Employee_payroll Add Gender varchar(1);

update Employee_payroll set gender='M' where id in (1,2,3);

--uc7
select SUM(salary) from Employee_payroll

select AVG(salary) from Employee_payroll

select SUM(salary) from Employee_payroll

select MIN(salary) from Employee_payroll

select count(*) from Employee_payroll group by gender;

select count(*), gender from Employee_payroll group by gender;

--uc8
Alter table Employee_Payroll Add PhoneNumber varchar(10);

Update Employee_Payroll Set PhoneNumber='8974561453' where Id=2;

ALTER TABLE Employee_Payroll ADD Address varchar(200) not null default 'Darjeeling';

ALTER TABLE Employee_Payroll ADD Department varchar(100);

Update Employee_Payroll Set Department='Development' where Name='Arpan';

--uc9
ALTER TABLE Employee_Payroll ADD Deduction int not null default 0 ;

ALTER TABLE Employee_Payroll ADD Taxable_Pay int not null default 0 ;

ALTER TABLE Employee_Payroll ADD Net_Pay int not null default 0 ;

--uc10
Insert into Employee_Payroll
(Name,Salary,StartDate,Gender,PhoneNumber,Department,Deduction,Taxable_Pay,Net_Pay) Values
('Bikash',55000,'2022.06.30','M','9800235461','',1250,200,450000);

select * from Employee_payroll;