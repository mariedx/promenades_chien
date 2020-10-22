# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  City.create(city_name: Faker::Address.city)
end

15.times do   
  Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
  Dog.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, city: City.all.sample)
end

25.times do
  dog = Dog.all.sample
  Stroll.create(
  duration: Faker::Number.between(from: 15, to: 60),
  has_played: [true, false].sample,
  dogsitter: Dogsitter.all.sample,
  dog: dog,
  city: dog.city)
end