# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning Database..."
Restaurant.destroy_all
attributes = [
  { name: "Epicure", address: "Paris", category: "french", phone_number: "0666473785" },
  { name: "Lucas", address: "Ici", category: "chinese", phone_number: "0666473185" },
  { name: "Aueiane", address: "La bas", category: "italian", phone_number: "0660473785" },
  { name: "Anais", address: "Loin", category: "japanese", phone_number: "0662473785" },
  { name: "Vince", address: "A cote", category: "belgian", phone_number: "0668473785" }
]
attributes.each do |attribute|
  # attribute -> { name: "Big Bali", address:"Place Fernand Lafargue", rating: 4 }
  restaurant = Restaurant.create(attribute)
  puts "#{restaurant.name} created !"
end
puts "#{Restaurant.count} created !"
