CREATE DATABASE IF NOT EXISTS serp;
USE serp;
CREATE TABLE users(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,email VARCHAR(120) UNIQUE NOT NULL,phone VARCHAR(20),password VARCHAR(255) NOT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
CREATE TABLE departments(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,contact VARCHAR(30) NOT NULL);
CREATE TABLE emergency_reports(id INT AUTO_INCREMENT PRIMARY KEY,user_id INT NOT NULL,department_id INT NOT NULL,type VARCHAR(60) NOT NULL,location VARCHAR(255) NOT NULL,description TEXT NOT NULL,status ENUM('Pending','Assigned','In Progress','Resolved','Cancelled') DEFAULT 'Pending',created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE,FOREIGN KEY(department_id) REFERENCES departments(id));
CREATE TABLE admins(id INT AUTO_INCREMENT PRIMARY KEY,username VARCHAR(50) UNIQUE NOT NULL,password VARCHAR(64) NOT NULL);
INSERT INTO departments(name,contact) VALUES('Ambulance / Medical','108'),('Fire Brigade','101'),('Police','112'),('Disaster Management','1070');
INSERT INTO admins(username,password) VALUES('admin',SHA2('admin123',256));