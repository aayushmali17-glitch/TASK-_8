-- Example 1: Stored Procedure – Get Students by Grade
DELIMITER //

CREATE PROCEDURE GetStudentsByGrade(IN gradeInput VARCHAR(5))
BEGIN
    SELECT StudentID, Name, Age, Marks
    FROM Students
    WHERE Grade = gradeInput;
END //

DELIMITER ;

CALL GetStudentsByGrade('A');
-- This will return all students with Grade = 'A'.

-- Example 2: Stored Procedure – Insert a New Student
DELIMITER //

CREATE PROCEDURE AddStudent(
    IN p_name VARCHAR(50),
    IN p_age INT,
    IN p_grade VARCHAR(5),
    IN p_marks INT
)
BEGIN
    INSERT INTO Students (Name, Age, Grade, Marks)
    VALUES (p_name, p_age, p_grade, p_marks);
END //

DELIMITER ;

CALL AddStudent('Rohan', 23, 'B', 78);
