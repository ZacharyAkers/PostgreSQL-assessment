CREATE TABLE todos(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at DATE NOT NULL,
  completed_at DATE NULL
);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Play Guitar', 'Tune strings and play stairway to heaven', 1, DATE  '2017-06-27');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Drive home', 'Headbanging in traffic', 3, DATE '2017-06-20');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Workout', 'Its good for you', 2, DATE '2017-06-27');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Do laundry', 'It Stanky', 1, DATE '2017-06-18');
INSERT INTO todos (title, details, priority, created_at) VALUES ('Complete Project','Its due at 4 but isnt so bad', 4, DATE '2017-06-18', current_timestamp);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = current_timestamp WHERE id = 2;

DELETE FROM todos WHERE completed_at IS NOT NULL;