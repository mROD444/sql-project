INSERT INTO car (
    car_model,
    car_year,
    car_make
)   VALUES(
    '370z',
    2020,
    'Nissan'
), (
    'Sentra',
    2017,
    'Nissan'
), (
    'A7',
    2023,
    'Audi'
), (
    'Civic',
    2018,
    'Honda'
), (
    'G90',
    2022,
    'Genesis'
), (
    'E-450',
    2023,
    'Mercedez-Benz'
);


DELETE FROM car WHERE car_make is NULL

SELECT * 
from car




INSERT INTO sales_person(
    full_name,
    car_id,
    phone_number,
    user_address
) VALUES(
    'Taylor Swift',
    5,
    '111-111-1989',
    '1989 Taylor Ave, New York City, New York'
), (
    'Anthony Davis',
    4,
    '333-333-3333',
    '2024 Swoosh, Los Angeles, California'
), (
    'Kylie Jenner',
    3,
    '222-333-4444',
    '123 Famous St, Calabasas, California'
), (
    'Kim Kardashian',
    2,
    '000-111-2345',
    '7878 Skims Ln, San Francisco, California'
), (
    'Michael Scott',
    1,
    '999-123-1234',
    '126 Kellum Court, Scranton, Pennsylvania'
);


SELECT *
FROM sales_person;


INSERT INTO customer(
    full_name,
    car_id,
    phone_number,
    user_address
) VALUES (
    'Johnny Depp',
    2,
    9992223333,
    '1010 Sparrow Road, Austin, Texas'
), (
    'Arnold Schwarzenegger',
    5,
    0000001010,
    '1029 Olympia Houston, Texas'
), (
    'Natalie Portman',
    1,
    1022223342,
    '2934 Anakin, Miami, Florida'
), (
    'Scarlett Johansson',
    4,
    9990001111,
    'Widow Lane, Chicago, Illinois'
), (
    'Mark Wahlberg',
    3,
    9292221122,
    '3411 Ted Rd, Tampa, Florida'
);

SELECT *
FROM customer;



INSERT INTO invoice(
    amount,
    customer_id,
    sales_person_id,
    payment_status
) VALUES (
    21000,
    customer_id,
    sales_person_id
    'Paid'
), (
    18999,
    customer_id,
    sales_person_id,
    'Pending'
), (
    23900,
    customer_id,
    sales_person_id,
    'Pending'
), (
    17599,
    customer_id,
    sales_person_id,
    'Paid'
), (
    23529,
    customer_id,
    sales_person_id,
    'Paid'
), (
    18999,
    customer_id,
    sales_person_id,
    'Paid'
);





INSERT INTO mechanic(
    full_name,
    phone_number,
    user_address
) VALUES (
    'Alish Harvey',
    '333-234-1123',
    '167 Wuckert Curve, Donaborough, NE'
), (
    'Chris Garza',
    '333-474-1111',
    '61539 Predovic Hills, Lake Gerald, IN'
), (
    'Ted Moore',
    '555-333-3333',
    '40609 Carter Ports, New Oliver, SD'
);

SELECT *
from mechanic


