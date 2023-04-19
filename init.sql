-- create user
CREATE USER api WITH PASSWORD 'apipassword';

-- grant permission
GRANT ALL ON DATABASE api TO api;

ALTER DEFAULT PRIVILEGES
GRANT ALL ON TABLES TO api;
