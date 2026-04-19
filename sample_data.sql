INSERT INTO Users (name, email)
VALUES ('Sambhavi', 'sambhavi@email.com');

INSERT INTO Plants (user_id, plant_name, species)
VALUES (1, 'Aloe Vera', 'Succulent'),
       (1, 'Tulsi', 'Herb');

INSERT INTO CareSchedule (plant_id, watering_frequency, sunlight_requirement, last_watered)
VALUES (1, 3, 'Low', '2026-04-15'),
       (2, 2, 'Medium', '2026-04-16');

INSERT INTO Reminders (plant_id, reminder_date, status)
VALUES (1, '2026-04-18', 'Pending'),
       (2, '2026-04-18', 'Completed');
