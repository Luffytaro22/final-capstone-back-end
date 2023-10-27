# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

image_url = 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/131210897.jpg?k=96dae0b1bb492a08ca3d2983d4c0f9ab91da5cf75d0921a1267160524a5b4d58&o=&hp=1'
accomodation = Accommodation.create!(name: 'Hotel', image_url: image_url);
AccommodationDetail.create!(accommodation: accomodation, accommodation_type: 'Room', bedrooms: 2, beds: 2, bathrooms: 1, property_type: 'Hotel', price: 120);
puts 'Seeds created successfully!'