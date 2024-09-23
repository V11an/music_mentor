-- DROP TABLE IF EXISTS user;
-- DROP TABLE IF EXISTS post;

CREATE TABLE IF NOT EXISTS user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  firstname TEXT NOT NULL,
  secondname TEXT NOT NULL,
  userType TEST NOT NULL,
  email TEST UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE IF NOT EXISTS timeline (
  id INTEGER PRIMARY KEY NOT NULL,
  user_id INTEGER NOT NULL,
  title TEXT NOT NULL,
  startTime TIMESTAMP NOT NULL,
  startDate DATE NOT NULL,
  endTime TIMESTAMP NOT NULL,
  endDate DATE NOT NULL,
  descriptions TEXT NOT NULL,
  timelineStatus TEXT NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user (id)
);

CREATE TABLE IF NOT EXISTS course (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  course_title TEXT NOT NULL,
  duration TEXT NOT NULL,
  description TEXT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id)
);