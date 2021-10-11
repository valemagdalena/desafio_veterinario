# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fechas = "01-01-2020".to_date.."20-10-2021".to_date
fechas = fechas.to_a

10.times do |i|
    Pet.create (
        name: Faker::Creature::Animal.name,
        race: Faker::Creature::Dog.breed
        birthdate: fechas.sample
    )
end
