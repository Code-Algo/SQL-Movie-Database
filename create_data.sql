DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS concessions CASCADE;
CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    concessions_name VARCHAR(50),
    price DECIMAL(10,2),
    "description" TEXT
);

DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    "description" TEXT
);

DROP TABLE IF EXISTS tickets CASCADE;
CREATE TABLE tickets(
    tickets_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

