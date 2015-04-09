# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create two events
2.times do |i|
  Event.create(name: "Event #{i +1}")
end

#Create 5 locations
5.times do |i|
  Location.create(
                  name: "Location #{i + 1}",
                  tag: (('A'..'Z').to_a + ('a'..'z').to_a + (0..9).to_a).shuffle[0..7].join,
                  )
 end

#Create 3 participants
3.times do |i|
  Participant.create(email: "participant#{i + 1}@email.com")
end
