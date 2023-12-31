--CREATE the DATABASE
SELECT DATABASE SCHOOL
USE SCHOOL

--CREATE the TABLE STUDENTS

CREATE TABLE students(
student_id INT,
name VARCHAR(50),
age INT

);


--INSERT the VALUES to the table


INSERT INTO  students(student_id,name,age)
VALUES(9,'vichu',18),
      (4,'idin',20),
      (7,'rishi',17),
      (5,'kali',16),
      (2,'arvinth',21),
      (6,'naveen',21),
      (1,'arun',12),
      (8,'sudhir',15),
      (3,'harish',22),
      (10,'vijay',20);
 -----------------------------------------TASK 1--------------------------------
--Sort the data in ascending order by student_id;
SELECT *FROM students order by student_id;

--Sort the data in descending order by student_id;
SELECT *FROM students order by student_id desc;

-----------------------------------------TASK 2---------------------------------
--COUNT of data at a particular age;
SELECT COUNT(*) FROM students WHERE age=20;

--CREATE another TABLE marks_info

CREATE TABLE marks_info(
student_id INT,
subject VARCHAR(100),
marks INT
);

--INSERT VALUES to the table

INSERT INTO marks_info(student_id,subject,marks)
VALUES(7,'maths',90),
      (8,'science',80),
      (5,'social',70),
      (9,'chemistry',80),
      (3,'maths',100),
      (10,'maths',100);
      
------------------------------------------TASK 3--------------------------------    
--Get the data from a particular attribute
select *from marks_info where subject='maths';

--Get the average of marks 
select avg(marks) from marks_info;

-----------------------------------------TASK 4---------------------------------
--Implementation of INNER JOIN 

SELECT marks_info.student_id, students.name,students.age
FROM students
INNER JOIN marks_info
ON students.student_id=marks_info.student_id;

--Implementation of LEFT JOIN 

SELECT marks_info.student_id, students.name,students.age
FROM students
LEFT JOIN marks_info
ON students.student_id=marks_info.student_id;

--Implementation of RIGHT JOIN 

SELECT marks_info.student_id, students.name,students.age
FROM students
RIGHT JOIN marks_info
ON students.student_id=marks_info.student_id;

--Implementation of CROSS JOIN 

SELECT marks_info.student_id, students.name,students.age
FROM students
CROSS JOIN marks_info;

--Implementation of FULL OUTER JOIN 

SELECT marks_info.student_id, students.name,students.age
FROM students
FULL OUTER JOIN marks_info
ON students.student_id=marks_info.student_id;

