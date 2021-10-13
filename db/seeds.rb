# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |x|
    Client.create(
        name:Faker::Name.name,
        phone_number: Faker::Number.number(digits: 9),
        email:Faker::Internet.email
    )
end

clients = Client.all

10.times do |i|
    Pet.create(
        name: Faker::Creature::Dog.name,
        race: Faker::Creature::Dog.breed,
        birthdate: Faker::Date.between(from: '2015-01-01', to: '2021-12-31'),
        client_id: clients.sample.id
    )
end

