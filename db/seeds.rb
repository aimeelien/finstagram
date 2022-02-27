users = [
  { username: "lovelydog_520", avatar_url: "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_4x3.jpg", email: "sharky_j@gmail.com", password: "abcd" },
  { username: "kirk_cat", avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUHrmOd3f8vPab0H4Ja15a-pzFczZFJkj5fg&usqp=CAU", email: "kirk_w@gmail.com", password: "abcd" },
  { username: "pig_peppa", avatar_url: "https://cdn.vox-cdn.com/thumbor/1JMlykD0FI4RdyHD9EzON04ceBA=/0x0:5000x3200/1400x1050/filters:focal(2652x1434:3452x2234):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/65449715/cute_pig_GettyImages_847218080.0.jpg
  ", email: "marlin_p@gmail.com", password: "abcd" }
]

finstagram_posts = [
  { photo_url: "https://www.gannett-cdn.com/media/2021/06/03/USATODAY/usatsports/imageForEntry18-8on.jpg?width=2560"},
  { photo_url: "https://cdn.theatlantic.com/thumbor/tK3KeCj08mDDu431jVj3ex_GqXc=/0x699:6720x4479/960x540/media/img/mt/2021/05/GettyImages_1218380632/original.jpg "},
  { photo_url: "https://i.natgeofe.com/k/0ed36c42-672a-425b-9e62-7cc946b98051/pig-fence.jpg"}
]

puts "=== Seeding database... ==="

# create Users and FinstagramPosts
users.each_with_index do |user, index|
  # create new User
  user_record = User.create(user)
  puts "-- Created User: #{user_record.username}"
  # get a finstagram_post
  finstagram_post = finstagram_posts[index]
  # modify finstagram_post's user_id from created record
  finstagram_post[:user_id] = user_record.id
  # create new FinstagramPost
  FinstagramPost.create(finstagram_post)
  puts "-- Created a FinstagramPost for User: #{user_record.username}"
end

puts "=== Seeding complete. ==="