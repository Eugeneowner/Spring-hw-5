INSERT INTO users(enabled, encrypted_password, user_name)
VALUES (true, '$2a$10$BXH1wlAJPIMXvjnJTBoRuea4CvZwSs8/Zqz4bDRZBDJ6hxvXoHlqq', 'user'),
       (true, '$2a$10$BXH1wlAJPIMXvjnJTBoRuea4CvZwSs8/Zqz4bDRZBDJ6hxvXoHlqq', 'admin');

INSERT INTO roles(role_id, role_name, user_id)
VALUES (101, 'USER', 1),
       (102, 'ADMIN', 2);

INSERT INTO customers (name, email, age, password, phone, created_date, last_modified_date)
VALUES ('Eugene', 'eugene@gmail.com', 38, 'qWerty', '+380672222222', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('Tanya', 'tanya@gmail.com', 30, 'qWerty', '+380631113311', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('Nikita', 'nikita@gmail.com', 37, 'qWerty', '+380933332233', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('Sergey', 'sergey@gmail.com', 42, 'qWerty', '+380933332211', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('Alexey', 'alexey@gmail.com', 44, 'qWerty', '+380666332233', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('Aleksandr', 'alexander@gmail.com', 28, 'qWerty', '++380933332443', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('Anna', 'anna@gmail.com', 31, 'qWerty', '+380933334444', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO accounts (number, currency, balance, customer_id, created_date, last_modified_date)
VALUES (uuid_generate_v4(), 'USD', 100.0, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       (uuid_generate_v4(), 'USD', 50.0, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO employers (name, address, created_date, last_modified_date)
VALUES ('Facebook', 'California, USA', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('LinkedIn', 'California, USA', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), ('Apple', 'California, USA', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO customers_employers (customer_id, employer_id)
VALUES (1, 1),
       (2, 2),
       (3, 1);
