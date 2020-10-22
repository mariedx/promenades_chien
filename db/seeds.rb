# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

3.times do 
  city = City.create!(
    city_name: Faker::Address.city
  )
end
30.times do
  dog = Dog.create!(
  name: Faker::Games::Pokemon.name,
  breed: Faker::Creature::Dog.breed,
  city: City.all.sample
  )
end

10.times do 
  dogsitter = Dogsitter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )
end

10.times do 
  stroll = Stroll.create!(
    duration: Faker::Number.between(from: 60, to: 120),
    has_played: true,
    dogsitter: Dogsitter.all.sample,
    dog: Dog.all.sample,
    city: City.
  )
end
