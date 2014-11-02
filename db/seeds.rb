# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |i|
  Post.create({author: Faker::Name.name,
               title: Faker::Lorem.words(rand(4) + 1).join(' ').titleize,
               body: Faker::Lorem.sentence(3) +
                   " " + Faker::Hacker.say_something_smart})
end