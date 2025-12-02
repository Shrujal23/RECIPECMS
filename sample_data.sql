USE RecipeCMS;

-- ----------------------------
---Users
-- ----------------------------
INSERT INTO Users (username, email, password_hash) VALUES
('john_doe', 'john@example.com', 'hash123'),
('mary_smith', 'mary@example.com', 'hash456');

-- ----------------------------
---Recipes
-- ----------------------------
INSERT INTO Recipes (title, description, instructions, cooking_time, servings, user_id) VALUES
('Chocolate Cake', 'Rich and moist chocolate cake', 'Mix ingredients and bake at 180C for 30 mins', 45, 6, 1),
('Pasta Salad', 'Healthy vegetable pasta salad', 'Boil pasta, mix with veggies and dressing', 20, 2, 2);

-- ----------------------------
-- Ingredients
-- ----------------------------
INSERT INTO Ingredients (ingredient_name) VALUES
('Flour'), ('Sugar'), ('Eggs'), ('Butter'), ('Pasta'), ('Tomato'), ('Cucumber');

-- ----------------------------
-- Recipe_Ingredients
-- ----------------------------
INSERT INTO Recipe_Ingredients (recipe_id, ingredient_id, quantity) VALUES
(1, 1, '2 cups'), (1, 2, '1 cup'), (1, 3, '3 pcs'), (1, 4, '100g'),
(2, 5, '200g'), (2, 6, '2 pcs'), (2, 7, '1 pc');

-- ----------------------------
-- Categories
-- ----------------------------
INSERT INTO Categories (category_name) VALUES ('Dessert'), ('Vegetarian'), ('Salad');

-- ----------------------------
-- Recipe_Categories
-- ----------------------------
INSERT INTO Recipe_Categories (recipe_id, category_id) VALUES
(1, 1), (2, 2), (2, 3);

-- ----------------------------
-- Comments
-- ----------------------------
INSERT INTO Comments (recipe_id, user_id, comment_text) VALUES
(1, 2, 'This cake was delicious!'),
(2, 1, 'Easy to make and very healthy.');
