# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

4.times do
  city = City.create!(city_name: Faker::Address.city)
end

4.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.name, city: City.all.sample)
end

8.times do
  dog = Dog.create!(name: Faker::Name.first_name, city: City.all.sample)
end

12.times do
  stroll = Stroll.create!(date: Faker::Date.between(from: 2.years.ago, to: Date.today), dogsitter: Dogsitter.all.sample, dog: Dog.all.sample)
end
