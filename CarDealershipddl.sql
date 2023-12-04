
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_model VARCHAR,
    car_year INTEGER,
);

CREATE TABLE sales_person(
    sales_person_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    FOREIGN KEY(car_id) REFERENCES car(car_id),
    phone_number INTEGER,
    user_address VARCHAR
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    FOREIGN KEY(car_id) REFERENCES car(car_id),
    phone_number VARCHAR,
    user_address VARCHAR
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    amount INTEGER,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    sales_person_id INTEGER,
    FOREIGN KEY(sales_person_id) REFERENCES sales_person(sales_person_id),
    payment_status VARCHAR
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    phone_number INTEGER,
    user_address VARCHAR
);

CREATE TABLE service_ticket(
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY(car_id) REFERENCES car(car_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    payment_amount INTEGER,
    payment_date VARCHAR,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE car
ADD car_make VARCHAR;


ALTER TABLE sales_person
ADD phone_number VARCHAR;

ALTER TABLE sales_person
ADD user_address VARCHAR;

ALTER TABLE sales_person
DROP car_id;

ALTER TABLE sales_person
ADD car_id SERIAL;