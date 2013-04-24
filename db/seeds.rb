# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Picture.destroy_all

users = [
  { :first_name => "Ryan", :last_name => "Francis", :email => "ryan.p.francis@gmail.com", :password => "unlock"}
  { :first_name => "Hannah", :last_name => "Mackay", :email => "hannahmackay18@gmail.com", :password => "unlock"}
]

users.each do |user|
  u = User.new
  u.first_name = user[:first_name]
  u.last_name = user[:last_name]
  u.email = user[:email]
  u.password = user[:password]
  u.save
end

pictures = [
  { :from_id => User.first, :source => "http://www.seducingwithstyle.com/wp-content/uploads/2012/10/polo-shirt-men-asian.jpg", :comment => "Love this look!", :category => "casual", :area => "favorite" },
  { :from_id => User.first, :source => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThaeRVv3PTtkaEzMYJ890h2N_8VXC5sowex2IvAdBSPteQP4w-", :comment => "this look is awesome", :category => "casual", :area => "favorite" },
  { :from_id => User.first, :source => "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTuqN_vwvDEe_nAOJ2dlxEfAM_B8qqzfbjxQ7Ja4tpNBwevkVqi1w", :comment => "this is me killing it on my way to class", :category => "casual", :area => "personal" },
  { :from_id => User.last, :source => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTpVa79302dPtCG5AkdG2xRaWiUNKzJDH4KofAWlfIakBKsBkQ9IQ", :comment => "I look like a stud in my jean jacket.", :category => "casual", :area => "personal" },
  { :from_id => User.last, :source => "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQOBcGb2dFX6TyPtv3AmRLMt3Wv4NAZedeL0vtVaMhQo1AWDEWt", :comment => "like this suit", :category => "work", :area => "favorite" },
  { :from_id => User.last, :source => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTszwEgHo4iclmNGg5Ph193YWol_sdYaRpGMl3Ar7PHBUmttM9UDQ", :comment => "good sweater with aviators and white tee", :category => "casual", :area => "favorite" },
]

pictures.each do |pic|
  p = Picture.new
  p.source = pic[:source]
  p.caption = pic[:caption]
  p.save
end

puts "#{User.count} users are now in the database."
puts "#{Picture.count} pictures are now in the database."



