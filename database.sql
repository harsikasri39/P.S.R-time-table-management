DROP DATABASE IF EXISTS college_db;

CREATE DATABASE college_db;
USE college_db;

CREATE TABLE timetable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    year INT, -- 1, 2, 3, or 4
    day VARCHAR(10), -- MON, TUE, etc.
    hour_no INT, -- 1 to 7
    course_code VARCHAR(20),
    course_name VARCHAR(100),
    faculty_name VARCHAR(100),
    hall_no VARCHAR(20)
);

-- MONDAY
INSERT INTO timetable (year, day, hour_no, course_code, course_name, faculty_name, hall_no) VALUES
(2, 'MON', 1, '231CS45', 'Operating Systems', 'Dr.V.Selvakumar / Ms.S.Sumathi', 'SHS04'),
(2, 'MON', 2, '231CS42', 'Design and Analysis of Algorithms', 'Ms.P.Packiya Lakshmi', 'SHS04'),
(2, 'MON', 3, '231CS34', 'Object Oriented Programming using C++', 'Mr.S.Shunmuga Sundaram', 'SHS04'),
(2, 'MON', 4, '231CS41', 'Database Management Systems', 'Mr.T.Saravanan', 'SHS04'),
(2, 'MON', 5, '231BS42', 'Probability and Statistics', 'Mr.M.Bala', 'SHS04'),
(2, 'MON', 6, '231IT41', 'Communication Systems', 'Ms.M.Anitha', 'SHS04'),
(2, 'MON', 7, '231CS41', 'Database Management Systems', 'Mr.T.Saravanan', 'SHS04');

-- TUESDAY
INSERT INTO timetable (year, day, hour_no, course_code, course_name, faculty_name, hall_no) VALUES
(2, 'TUE', 1, '231BS42', 'Probability and Statistics', 'Mr.M.Bala', 'SHS04'),
(2, 'TUE', 2, '231CS42', 'Design and Analysis of Algorithms', 'Ms.P.Packiya Lakshmi', 'SHS04'),
(2, 'TUE', 3, '231CS34', 'Object Oriented Programming using C++', 'Mr.S.Shunmuga Sundaram', 'SHS04'),
(2, 'TUE', 4, '231IT41', 'Communication Systems', 'Ms.M.Anitha', 'SHS04'),
(2, 'TUE', 5, '231CS38/231CS47', 'C++ / DBMS Lab', 'Staff Assigned', 'SHS04'),
(2, 'TUE', 6, '231CS38/231CS47', 'C++ / DBMS Lab', 'Staff Assigned', 'SHS04'),
(2, 'TUE', 7, '231CS38/231CS47', 'C++ / DBMS Lab', 'Staff Assigned', 'SHS04');

-- WEDNESDAY
INSERT INTO timetable (year, day, hour_no, course_code, course_name, faculty_name, hall_no) VALUES
(2, 'WED', 1, '231CS41', 'Database Management Systems', 'Mr.T.Saravanan', 'SHS04'),
(2, 'WED', 2, '231BS42', 'Probability and Statistics', 'Mr.M.Bala', 'SHS04'),
(2, 'WED', 3, '231CS42', 'Design and Analysis of Algorithms', 'Ms.P.Packiya Lakshmi', 'SHS04'),
(2, 'WED', 4, '231CS34', 'Object Oriented Programming using C++', 'Mr.S.Shunmuga Sundaram', 'SHS04'),
(2, 'WED', 5, '231CS45', 'Operating Systems', 'Dr.V.Selvakumar / Ms.S.Sumathi', 'SHS04'),
(2, 'WED', 6, 'NPTEL', 'NPTEL Session', 'Ms.M.Anitha / Ms.S.Sumathi', 'SHS04'),
(2, 'WED', 7, '231HS47', 'Enhancing Aptitude and Reasoning Skills-II', 'Dr.V.Selvakumar', 'SHS04');

-- THURSDAY
INSERT INTO timetable (year, day, hour_no, course_code, course_name, faculty_name, hall_no) VALUES
(2, 'THU', 1, '231IT41', 'Communication Systems', 'Ms.M.Anitha', 'SHS04'),
(2, 'THU', 2, '231CS38/231CS45', 'C++ Lab / OS', 'Staff Assigned', 'SHS04'),
(2, 'THU', 3, '231CS38/231CS45', 'C++ Lab / OS', 'Staff Assigned', 'SHS04'),
(2, 'THU', 4, '231CS38/231CS45', 'C++ Lab / OS', 'Staff Assigned', 'SHS04'),
(2, 'THU', 5, '231BS42', 'Probability and Statistics', 'Mr.M.Bala', 'SHS04'),
(2, 'THU', 6, '231CS4', 'Design & Analysis of Algorithms', 'Staff Assigned', 'SHS04'),
(2, 'THU', 7, 'TUTOR', 'Tutor Hour', 'Tutor Assigned', 'SHS04');

-- FRIDAY
INSERT INTO timetable (year, day, hour_no, course_code, course_name, faculty_name, hall_no) VALUES
(2, 'FRI', 1, '231CS45', 'Operating Systems', 'Dr.V.Selvakumar / Ms.S.Sumathi', 'SHS04'),
(2, 'FRI', 2, '231CS34', 'Object Oriented Programming using C++', 'Mr.S.Shunmuga Sundaram', 'SHS04'),
(2, 'FRI', 3, '231CS42', 'Design and Analysis of Algorithms', 'Ms.P.Packiya Lakshmi', 'SHS04'),
(2, 'FRI', 4, '231BS42', 'Probability and Statistics', 'Mr.M.Bala', 'SHS04'),
(2, 'FRI', 5, '231CS45/231CS47', 'OS / DBMS Lab', 'Staff Assigned', 'SHS04'),
(2, 'FRI', 6, '231CS45/231CS47', 'OS / DBMS Lab', 'Staff Assigned', 'SHS04'),
(2, 'FRI', 7, '231CS45/231CS47', 'OS / DBMS Lab', 'Staff Assigned', 'SHS04');

-- Course Details Table
CREATE TABLE IF NOT EXISTS course_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    year INT,
    course_code VARCHAR(20),
    course_name VARCHAR(100),
    faculty_name VARCHAR(100),
    l INT, t INT, p DECIMAL(3,1), o INT, c DECIMAL(3,1)
);

-- Weekly Grid Table
CREATE TABLE IF NOT EXISTS weekly_grid (
    id INT AUTO_INCREMENT PRIMARY KEY,
    year INT,
    day VARCHAR(10),
    p1 VARCHAR(50), p2 VARCHAR(50), p3 VARCHAR(50), p4 VARCHAR(50),
    p5 VARCHAR(50), p6 VARCHAR(50), p7 VARCHAR(50), p8 VARCHAR(50)
);

-- DATA FOR II YEAR
INSERT INTO course_details (year, course_code, course_name, faculty_name, l, t, p, o, c) VALUES
(2, '231BS42', 'Probability and Statistics', 'Mr.M.Bala', 4, 1, 0, 0, 3),
(2, '231CS41', 'Database Management Systems', 'Mr.T.Saravanan', 4, 0, 0, 0, 3),
(2, '231CS42', 'Design and Analysis of Algorithms', 'Ms.P.Packiya Lakshmi', 4, 0, 0, 0, 3),
(2, '231IT41', 'Communication Systems', 'Ms.M.Anitha', 3, 0, 0, 0, 3),
(2, '231CS34', 'Object Oriented Programming using C++', 'Mr.S.Shunmuga Sundaram', 4, 0, 0, 0, 3),
(2, '231CS45', 'Operating Systems', 'Dr.V.Selvakumar / Ms.S.Sumathi', 3, 0, 3, 0, 4),
(2, '231CS47', 'Database Management Systems Laboratory', 'Mr.T.Saravanan / Dr.P.Edwin Dhas', 0, 0, 3, 0, 1.5),
(2, '231CS38', 'C++ Programming Laboratory', 'Mr.S.Shunmuga Sundaram / Ms.S.Sumathi', 0, 0, 3, 0, 1.5),
(2, '231HS47', 'Enhancing Aptitude and Reasoning Skills-II', 'Dr.V.Selvakumar', 0, 0, 1, 0, 1),
(2, 'NPTEL', 'NPTEL Session', 'Ms.M.Anitha', 0, 0, 0, 1, 0),
(2, 'TUTOR', 'Tutor Hour', 'Ms.S.Sumathi', 0, 0, 0, 1, 0);

INSERT INTO weekly_grid (year, day, p1, p2, p3, p4, p5, p6, p7) VALUES
(2, 'MON', '231CS45', '231CS42', '231CS34', '231CS41', '231BS42', '231IT41', '231CS41'),
(2, 'TUE', '231BS42', '231CS42', '231CS34', '231IT41', '231CS38/47', '231CS38/47', '231CS38/47'),
(2, 'WED', '231CS41', '231BS42', '231CS42', '231CS34', '231CS45', 'NPTEL', '231HS47'),
(2, 'THU', '231IT41', '231CS38/45', '231CS38/45', '231CS38/45', '231BS42', '231CS42', 'TUTOR'),
(2, 'FRI', '231CS45', '231CS34', '231CS42', '231BS42', '231CS45/47', '231CS45/47', '231CS45/47');

-- DATA FOR III YEAR
INSERT INTO course_details (year, course_code, course_name, faculty_name, l, t, p, o, c) VALUES
(3, '231IT61', 'Cloud and Edge Computing', 'Dr.R.Ramani', 4, 0, 0, 0, 3),
(3, '231IT62', 'Web Technology', 'Ms.M.Anitha', 4, 0, 0, 0, 3),
(3, '231IT63', 'Information Security', 'Ms.P.Packiya Lakshmi', 3, 0, 0, 0, 3),
(3, '231ITV13', 'Python with MongoDB', 'Mr.T.Saravanan', 4, 0, 0, 0, 3),
(3, '231ITV14', 'Enterprise Resource Planning', 'Ms.S.Sumathi', 4, 0, 0, 0, 3),
(3, '231IT64', 'Cloud Laboratory', 'Ms.P.Packiya Lakshmi', 0, 0, 3, 0, 1.5),
(3, '231IT65', 'Web Technology Laboratory', 'Ms.M.Anitha', 0, 0, 3, 0, 1.5),
(3, '231IT69', 'Mini project', 'Dr.P.Edwin Dhas', 0, 0, 2, 0, 1),
(3, '231TH03', 'Software Application Development', 'Ms.S.Sumathi', 5, 0, 0, 0, 3),
(3, '231TH05', 'Intelligent Agents', 'Mr.S.Shunmuga Sundaram', 5, 0, 0, 0, 3),
(3, 'GATE', 'GATE Coaching', 'Dr.V.Selvakumar', 0, 0, 2, 0, 0),
(3, 'Placement', 'Placement Training', 'Ms.M.Anitha', 0, 0, 0, 1, 0);

INSERT INTO weekly_grid (year, day, p1, p2, p3, p4, p5, p6, p7, p8) VALUES
(3, 'MON', '231ITV14', '231ITV13', 'GATE', '231IT63', '231IT64', '231IT64', '231IT64', '231TH03'),
(3, 'TUE', '231IT62', '231OE3A', '231IT69', '231IT69', 'TUTOR', '231IT62', '231IT61', '231TH05'),
(3, 'WED', '231IT63', '231IT61', 'GATE', '231IT62', '231OE3A', '231ITV14', '231ITV14', '231TH03'),
(3, 'THU', '231ITV14', '231OE3A', '231IT61', 'Placement', '231IT65', '231IT65', '231IT65', '231TH05'),
(3, 'FRI', '231ITV13', '231IT62', '231ITV14', '231ITV13', '231IT63', '231IT61', 'NPTEL', '231TH03/05');

-- Queries
SELECT * FROM weekly_grid WHERE year = 2;
SELECT * FROM weekly_grid WHERE year = 3;
SELECT * FROM course_details;
