def humanized_time_ago(time_ago_in_minutes)
  if time_ago_in_minutes>=60
    "#{time_ago_in_minutes/60} hours ago"
  else
    "#{time_ago_in_minutes}minutes ago"
  end
end

get '/' do
  @finstagram_post_dog = {
    username: "lovelydog_520",
    avatar_url: "https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_4x3.jpg",
    photo_url: "https://www.gannett-cdn.com/media/2021/06/03/USATODAY/usatsports/imageForEntry18-8on.jpg?width=2560",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 35,
    comment_count: 1,
    comments: [{
      username: "lovelydog_520",
      text:"How lovely dog :D"
      }]
  }
  @finstagram_post_cat = {
    username: "kirk_cat",
    avatar_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUHrmOd3f8vPab0H4Ja15a-pzFczZFJkj5fg&usqp=CAU",
    photo_url: "https://cdn.theatlantic.com/thumbor/tK3KeCj08mDDu431jVj3ex_GqXc=/0x699:6720x4479/960x540/media/img/mt/2021/05/GettyImages_1218380632/original.jpg",
    humanized_time_ago: humanized_time_ago(65),
    like_count: 15,
    comment_count: 1,
    comments: [{
      username: "kirk_cat",
      text: "You have a package!"
    }]
  }

  @finstagram_post_pig = {
    username: "pig_peppa",
    avatar_url: "https://cdn.vox-cdn.com/thumbor/1JMlykD0FI4RdyHD9EzON04ceBA=/0x0:5000x3200/1400x1050/filters:focal(2652x1434:3452x2234):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/65449715/cute_pig_GettyImages_847218080.0.jpg",
    photo_url: "https://i.natgeofe.com/k/0ed36c42-672a-425b-9e62-7cc946b98051/pig-fence.jpg",
    humanized_time_ago: humanized_time_ago(190),
    like_count: 23,
    comment_count: 1,
    comments: [{
      username: "pig_peppa",
      text: "lunchtime! ;)"
    }]
  }
  @finstagram_posts = [@finstagram_post_dog, @finstagram_post_cat, @finstagram_post_pig]
  erb(:index)
end


