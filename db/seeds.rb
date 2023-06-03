require 'faker'

puts "seed file  🌱"

50.times do 

    user = User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email
    )

    product = Product.create(
        name: Faker::Commerce.product_name,
        price: rand(20..99)
    )

    rand(5..8).times do
        Review.create(
            comment: Faker::Lorem.sentence,
            star_rating: rand(1..5),
            user_id: user.id,
            product_id: product.id
        )
    end


end


puts "completed🌱"