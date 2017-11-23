# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


Cocktail.create(name: "Mojito")
Cocktail.create(name: "Pisco Sour")
Cocktail.create(name: "Cuba Libre")

# Dose.create(name: "6 à 8 feuilles de menthe")
# Dose.create(name: "4 cl de rhum blanc")
# Dose.create(name: "2 cl de sirop de sucre de canne")






