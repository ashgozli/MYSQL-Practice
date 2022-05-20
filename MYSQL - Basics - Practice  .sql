/* All common data types used in most DBMSA
-- INT          - whole value
-- DECIMAL(m,n) - Decimal Numbers - Exact Value
-- VARCHAR(1)   - String of text - length = 1
-- BLOB         - Binary Large Object, Stores large data
-- Date         - 'YYYY-MM-DD'
-- TIMESTAMP    - 'YYYY-MM-DD  HH:MM:SS' - used for recording
*/


-- Always create the DB scheme first before inserting any vals
DROP TABLE student;

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL ,
    major VARCHAR(20) /* UNIQUE */  DEFAULT 'undecided' ,
    PRIMARY KEY(student_id)
);

DESCRIBE student;


-- In order to delete a table just drop the table
-- DROP TABLE (For Example) student;



-- ADD or DELETE columns
ALTER TABLE student ADD gpa DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN gpa;




-- INSERTING VALUES
-- Example DATA
INSERT INTO student(name , major ) VALUES('Kate' , 'Sociology');
INSERT INTO student(name , major ) VALUES('Jack' , 'Biology');
INSERT INTO student(name , major ) VALUES( 'Mike' , 'Computer Science');

-- If an attribute is unknown do the following:
-- Lets say we do not know the major of the student

INSERT INTO student(name ) VALUES ( 'Claire' );


-- SELECT information from the table
SELECT * FROM student;


-- UPDATE DATA

UPDATE student
SET major = 'Comp Sci'
WHERE major = 'Computer Science' /* OR major = '' */ ;

-- DELETE ROW

DELETE FROM student
WHERE student_id = 4 /* AND Major = ' ' */ ;



-- SELECT FUNCTIONS - RETRIEVE DATA

SELECT *
FROM student
WHERE major = 'Bio';



SELECT student.major , student.name
FROM student
ORDER BY student_id ASC /* DESC descending order or could order based on major, student_id at the same time */  ;

-- LIMIT INT; is also a function to limit the number of rows shown

-- < , > , <= , >= , = , <> (not equal to) , AND , OR

-- IN funtion - finds specific vals in columns + ALSO can be combined
SELECT *
FROM student
WHERE name IN ( 'Kate' , 'Mike' );
