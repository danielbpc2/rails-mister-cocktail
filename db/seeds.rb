# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
puts "seeding"

parse = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

parse["drinks"].each do |x|
  x.each do |k, v|
    Ingredient.create(name: v)
  end
end

puts "ok"
