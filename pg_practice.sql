-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
CREATE DATABASE practice;
-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INTEGER NOT NULL DEFAULT 0,
  gender VARCHAR(10) NOT NULL DEFAULT 'Other'
);
-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
CREATE TABLE jobs (
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  name VARCHAR(255) NOT NULL DEFAULT '会社員',
  FOREIGN KEY (user_id) REFERENCES users(id)
);
