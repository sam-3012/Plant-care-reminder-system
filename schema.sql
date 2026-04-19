CREATE DATABASE PlantCareDB;
USE PlantCareDB;

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Plants (
    plant_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    plant_name VARCHAR(100),
    species VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE CareSchedule (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    plant_id INT,
    watering_frequency INT,
    sunlight_requirement VARCHAR(50),
    last_watered DATE,
    FOREIGN KEY (plant_id) REFERENCES Plants(plant_id)
);

CREATE TABLE Reminders (
    reminder_id INT PRIMARY KEY AUTO_INCREMENT,
    plant_id INT,
    reminder_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (plant_id) REFERENCES Plants(plant_id)
);
