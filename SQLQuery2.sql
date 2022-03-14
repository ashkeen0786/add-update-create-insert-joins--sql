create database ex
use ex
-----------craete table and insert value-------
create table student(id int identity,s_name varchar(20),age int,marks int,class varchar(20));
insert into student values('ashkeen',20,85,'BCA');
insert into student values('fazal',19,84,'BCA');
insert into student values('suhail',18,80,'BCA');

-------add column--------
alter table student add roll_no int;


------update date--------
update student set roll_no=45 where id=2
update student set roll_no=42 where id=1
update student set roll_no=55 where id=3



------craete table and insert value-------
create table teacher(id int identity, t_name varchar(20),age int,salary int,sub_name varchar(20));
insert into teacher values('shakir sir',40,75000,'C#');
insert into teacher values('juanid sir',42,50000,'HR');
insert into teacher values('sunil sir',45,55000,'.net');

-------- joins ---------
select student.s_name, teacher.t_name  from student inner join teacher on student.roll_no=teacher.age
select *from student left join teacher on student.roll_no=teacher.age;
select * from student right join teacher on student.roll_no=teacher.age;
select * from student full outer join teacher on student.roll_no=teacher.age;


--------show table ------
select * from student
select * from teacher
