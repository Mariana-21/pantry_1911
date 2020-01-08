require './lib/ingredient'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class RecipeTest < Minitest::Test 

    def test_it_exists
        ingredient1 = Ingredient.new("Cheese", "C", 100)
        ingredient2 = Ingredient.new("Macaroni", "oz", 30)
        recipe = Recipe.new("Mac and Cheese")

        assert_instance_of Recipe, recipe
    end

    def test_it_has_name
        recipe = Recipe.new("Mac and Cheese")

        assert_equal "Mac and Cheese", recipe.name
    end

    def test_it_has_required_ingredients
        ingredient1 = Ingredient.new("Cheese", "C", 100)
        ingredient2 = Ingredient.new("Macaroni", "oz", 30)
        recipe = Recipe.new("Mac and Cheese")

        assert_equal ({}), recipe.ingredients_required 
    end

    def test_it_can_add_ingredients 
        ingredient1 = Ingredient.new("Cheese", "C", 100)
        ingredient2 = Ingredient.new("Macaroni", "oz", 30)
        recipe = Recipe.new("Mac and Cheese")
        assert_equal ({}), recipe.ingredients_required

        recipe.add_ingredient(ingredient1, 2)
        recipe.add_ingredient(ingredient2, 8)

        assert_equal ({ingredient1 => 2, ingredient2 => 8}), recipe.ingredients_required 
        assert_equal [2, 8], recipe.amount_required
    end

    def test_it_has_ingredient_required 
        ingredient1 = Ingredient.new("Cheese", "C", 100)
        ingredient2 = Ingredient.new("Macaroni", "oz", 30)
        recipe = Recipe.new("Mac and Cheese")

         assert_equal ({}), recipe.ingredients_required

        recipe.add_ingredient(ingredient1, 2)
        recipe.add_ingredient(ingredient2, 8)

        assert_equal ([[ingredient1, ingredient2]]), recipe.ingredient
    end

    def test_it_can_find_total_calories
        skip
        ingredient1 = Ingredient.new("Cheese", "C", 100)
        ingredient2 = Ingredient.new("Macaroni", "oz", 30)
        recipe = Recipe.new("Mac and Cheese")

        recipe.add_ingredient(ingredient1, 2)
        recipe.add_ingredient(ingredient2, 8)

        assert_equal 440, recipe.total_calories 
    end

end