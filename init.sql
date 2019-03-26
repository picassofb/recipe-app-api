CREATE DATABASE postgres;
CREATE USER postgres WITH PASSWORD 'supersecretpassword';
GRANT ALL PRIVILEGES ON DATABASE "postgres" to postgres;