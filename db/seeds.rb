# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clean up database"
Flat.destroy_all
puts "database is clean"
puts "creating Flats"

4.times do
  flat = Flat.create!(
    name: Faker::Lorem.sentence,
    address: Faker::Address.street_name,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(50..500),
    number_of_guests: rand(1..10),
    url: "https://images.unsplash.com/photo-1512621480870-77463b1b90c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80",
  )
  puts "Flat #{flat.id} is created"
end

puts "done"
