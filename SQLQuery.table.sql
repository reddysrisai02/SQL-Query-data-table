create table Employees(Emp_id int , first_name varchar(90),last_name varchar(90),birth_date int, sex varchar(90),age int, PRIMARY KEY(Emp_id));
select* from Employees
drop table Employees
insert into Employees(Emp_id,first_name,last_name,birth_date,sex,age) values(100,'jan','levinson',1965-05-11,'F',22),
(101,'jack','reinson',1965-05-11,'F',22),
(102,'michel','scott',1964-03-15,'M',35),
(103,'josh','poter',1969-09-16,'M',18),
(104,'angela','mrtin',1971-09-25,'F',42),
(105,'andy','bermard',1715-06-22,'M',60);
alter table Employees add salary int;
alter table Employees add department varchar(120);

update Employees set salary='2000'  where Emp_id=100;
update Employees set salary='8000'  where Emp_id=101;
update Employees set salary='4000'  where Emp_id=102;
update Employees set salary='6000'  where Emp_id=103;
update Employees set salary='9000'  where Emp_id=104;
update Employees set salary='12000'  where Emp_id=105;
update Employees set department='mech'  where Emp_id=100;
update Employees set department='EEE'  where Emp_id=101;
update Employees set department='cse'  where Emp_id=102;
update Employees set department='mech'  where Emp_id=103;
update Employees set department='cse'  where Emp_id=105;
DELETE FROM Employees WHERE department;

SELECT MIN(age) FROM Employees
SELECT MAX(age) FROM Employees
SELECT MAX(salary) FROM Employees
SELECT MIN(salary) FROM Employees where Emp_id=104
select count(salary) from Employees where age>=40
select count(salary) from Employees where age<=10

select sum(salary) from Employees
select avg(salary) from Employees
SELECT COUNT(DISTINCT salary) FROM Employees;
SELECT DISTINCT age FROM Employees;

select Emp_id from Employees order by Emp_id asc
select Emp_id from Employees order by Emp_id desc LIMIT=2;
SELECT first_name as forename, last_name as endname from Employees
 
 select count(sex), sex from Employees group by sex;

select sum(salary),Emp_id from Employees group by Emp_id

select * from employees where department like 'mech';
select * from employees where department like '%cs%';
select first_name from employees union select last_name from employees 
select * from Employees where salary between 4000 and 8000


