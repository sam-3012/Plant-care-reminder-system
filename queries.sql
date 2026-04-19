SELECT p.plant_name, p.species
FROM Plants p
JOIN Users u ON p.user_id = u.user_id
WHERE u.name = 'Sambhavi';

SELECT p.plant_name, r.reminder_date
FROM Reminders r
JOIN Plants p ON r.plant_id = p.plant_id
WHERE r.reminder_date = CURDATE() AND r.status = 'Pending';

UPDATE Reminders
SET status = 'Completed'
WHERE reminder_id = 1;

SELECT p.plant_name, c.watering_frequency, c.sunlight_requirement
FROM CareSchedule c
JOIN Plants p ON c.plant_id = p.plant_id;
