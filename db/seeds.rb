# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

puts 'Cleaning database...'
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts 'Creating Co...'
ingredient_attributes = [
  {
    name: 'Lemon',
  },
  {
    name: 'Ice',
  },
  {
    name: "mint-leaves"
  },
  {
    name: "Rum"
  },
  {
    name: "Coke"
  },
  {
    name: "Gin"
  },
  {
    name: "Orange"
  },
  {
    name: "Vodka"
  },
  {
    name: "Grenadine"
  },
  {
    name: "Milk"
  },
  {
    name: "Aperol"
  },
  {
    name: "Prosecco"
  },
  {
    name: "Soda Water"
  }
]
Ingredient.create!(ingredient_attributes)
puts 'Finished!'

