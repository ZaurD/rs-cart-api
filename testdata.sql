-- insert some example carts
INSERT INTO carts (id, user_id, created_at, updated_at, status)
VALUES
  ('1f52878a-9d4e-4b4e-88dc-09c02a3d1b25', 'a66f7c99-1cc2-425a-8d27-8247c50e89d4', '2022-01-01', '2022-01-01', 'OPEN'),
  ('6fca5c5f-6b14-4d8c-a2f7-04a5d5e239cf', 'a66f7c99-1cc2-425a-8d27-8247c50e89d4', '2022-01-02', '2022-01-02', 'OPEN'),
  ('68aa6d28-dc68-49cb-9e6d-b5a1e5b5ef5d', 'b6cda2c7-2286-45fa-b9a5-1d2a7ebcfb43', '2022-01-03', '2022-01-03', 'OPEN'),
  ('f4d7e7df-2383-4a72-a114-8c76a45a1870', 'b6cda2c7-2286-45fa-b9a5-1d2a7ebcfb43', '2022-01-04', '2022-01-04', 'ORDERED');

-- insert some example cart items
INSERT INTO cart_items (cart_id, product_id, count)
VALUES
  ('1f52878a-9d4e-4b4e-88dc-09c02a3d1b25', 'f9a33be7-bc24-4840-936a-508cfa037d15', 2),
  ('1f52878a-9d4e-4b4e-88dc-09c02a3d1b25', '74f3f75e-9de4-4af8-a0b4-54b8c3f2ed75', 1),
  ('6fca5c5f-6b14-4d8c-a2f7-04a5d5e239cf', 'f9a33be7-bc24-4840-936a-508cfa037d15', 1),
  ('68aa6d28-dc68-49cb-9e6d-b5a1e5b5ef5d', 'f5ca5e5d-fd83-4523-b3b2-15014df9d5d5', 3),
  ('f4d7e7df-2383-4a72-a114-8c76a45a1870', '74f3f75e-9de4-4af8-a0b4-54b8c3f2ed75', 2),
  ('f4d7e7df-2383-4a72-a114-8c76a45a1870', 'f5ca5e5d-fd83-4523-b3b2-15014df9d5d5', 1);
