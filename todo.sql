CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(225) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Complete Project', 'Its due at 4 but isnt so bad', 5, '2017-06-27 2:00', '2017-06-27 4:00');
INSERT INTO todos (title, priority, created_at) VALUES ('Drive home', 'Headbanging in traffic', 1, '2017-06-27 2:10');
INSERT INTO todos(title, details, priority, created_at) VALUES ('Workout', 'Its good for you', 5, '2017-06-27 2:15');
INSERT INTO todos(title, details, priority, created_at) VALUES ('Do laundry', 'It Stanky', 3, '2017-06-27 2:20');
INSERT INTO todos(title, details, priority, created_at) VALUES ('Play Guitar', 'Tune strings and play stairway to heaven', 2, '2017-06-27 2:25');

SELECT * FROM todos WHERE completed_at IS NOT NULL;
SELECT * FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = '2017-06-27 3:13' WHERE id = 3;
DELETE FROM todos WHERE completed_at IS NOT NULL;