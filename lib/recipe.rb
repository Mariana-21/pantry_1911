class Recipe
    attr_reader :name, :ingredients_required

    def initialize(name)
        @name = name
        @ingredients_required = {}
    end

    def add_ingredient(ingredient, amount_required)
        @ingredients_required[ingredient] = amount_required

    end

    def amount_required
        amount_required = @ingredients_required.values
    end


    def ingredient
        ingredients = [] 
        ingredients << @ingredients_required.keys
    end

    def total_calories
        @ingredients_required[ingredient] 
    end
end