CREATE TABLE users (
  userid SERIAL PRIMARY KEY,
  username TEXT(30) UNIQUE NOT NULL,
  password VARCHAR(500) NOT NULL,
  email VARCHAR(30) UNIQUE NOT NULL,
  phone VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE messages (
  messageid SERIAL PRIMARY KEY,
  message_user INT REFERENCES users(userid),
  message_title VARCHAR(16) NOT NULL,
  message VARCHAR(280) NOT NULL
);

CREATE TABLE reminders (
  reminderid SERIAL PRIMARY KEY,
  reminder_user INT REFERENCES users(userid),
  reminder_title VARCHAR(16) NOT NULL,
  reminder_time TIME NOT NULL
);