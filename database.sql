CREATE DATABASE IF NOT EXISTS student_portal;

USE student_portal;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    link VARCHAR(255)
);

INSERT INTO courses (title, description, link) VALUES
('HTML Basics', 'Learn the structure of HTML pages.', 'https://www.w3schools.com/html/'),
('CSS Fundamentals', 'Styling web pages with CSS.', 'https://www.w3schools.com/css/'),
('PHP Introduction', 'Basics of PHP programming.', 'https://www.php.net/manual/en/intro-whatis.php'),
('PHP Basics', 'Introduction to PHP for backend development.', 'https://www.w3schools.com/php/'),
('MySQL Fundamentals', 'Learn how to use MySQL databases.', 'https://www.w3schools.com/mysql/'),
('Node.js Introduction', 'Learn backend development using Node.js.', 'https://nodejs.org/en/docs'),
('REST API Development', 'Build and consume RESTful APIs.', 'https://www.smashingmagazine.com/2018/01/understanding-using-rest-api/'),
('JavaScript Essentials', 'Learn core JavaScript programming.', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide'),
('React.js Basics', 'Introduction to React library for UI development.', 'https://react.dev/learn'),
('Responsive Web Design', 'Create websites that work on all devices.', 'https://www.w3schools.com/css/css_rwd_intro.asp'),
('CSS Grid and Flexbox', 'Advanced CSS layout techniques.', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/'),
('SQL Queries', 'Write effective SQL queries to manage data.', 'https://www.w3schools.com/sql/sql_select.asp'),
('Database Design', 'Learn concepts of database normalization and design.', 'https://www.guru99.com/database-design.html'),
('MongoDB Introduction', 'NoSQL database fundamentals using MongoDB.', 'https://www.mongodb.com/docs/manual/introduction/'),
('PostgreSQL Fundamentals', 'Advanced features of PostgreSQL database.', 'https://www.postgresql.org/docs/current/tutorial.html'),
('AWS Basics', 'Introduction to Amazon Web Services.', 'https://aws.amazon.com/getting-started/'),
('Cloud Computing Fundamentals', 'Understand cloud computing concepts.', 'https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-cloud-computing/'),
('Docker and Containers', 'Learn containerization with Docker.', 'https://docs.docker.com/get-started/'),
('Kubernetes Introduction', 'Orchestrate containers using Kubernetes.', 'https://kubernetes.io/docs/tutorials/kubernetes-basics/');

INSERT INTO courses (title, description, link) VALUES
('C Programming', 'Learn basics of C programming language.', 'https://www.learn-c.org/'),
('Data Structures', 'Understand stacks, queues, and linked lists.', 'https://www.geeksforgeeks.org/data-structures/'),
('Operating Systems', 'Learn OS concepts like process and memory management.', 'https://www.geeksforgeeks.org/operating-systems/'),
('Computer Networks', 'Basics of networking and protocols.', 'https://www.geeksforgeeks.org/computer-network-tutorials/'),
('Cyber Security Basics', 'Introduction to cyber security concepts.', 'https://www.cisa.gov/cybersecurity');

INSERT INTO courses (title, description, link) VALUES
('Java Programming', 'Core Java concepts and OOP principles.', 'https://www.javatpoint.com/java-tutorial'),
('Python Programming', 'Learn Python from basics to advanced.', 'https://www.python.org/doc/'),
('C++ Programming', 'Object oriented programming using C++.', 'https://www.learncpp.com/'),
('Data Structures & Algorithms', 'Learn DSA concepts for interviews.', 'https://www.geeksforgeeks.org/data-structures/'),
('Software Engineering', 'Software development life cycle concepts.', 'https://www.geeksforgeeks.org/software-engineering/'),
('Linux Basics', 'Learn Linux commands and fundamentals.', 'https://www.geeksforgeeks.org/linux-tutorial/'),
('DevOps Fundamentals', 'Introduction to DevOps tools and practices.', 'https://www.redhat.com/en/topics/devops'),
('Git and GitHub', 'Version control using Git and GitHub.', 'https://git-scm.com/doc'),
('Machine Learning Basics', 'Introduction to machine learning concepts.', 'https://www.ibm.com/topics/machine-learning'),
('Artificial Intelligence', 'AI fundamentals and applications.', 'https://www.ibm.com/topics/artificial-intelligence');



INSERT INTO users (username, password)
VALUES ('student', '1234');

SELECT * FROM users
WHERE username = ? AND password = ?;  #login check
