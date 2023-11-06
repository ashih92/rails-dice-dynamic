Rails.application.routes.draw do
  get("/dice/2/6", {:controller=>"zebra",:action=>"rice"})
  get("/dice/2/10", {:controller=>"zebra",:action=>"noodles"})
  get("/dice/1/20", {:controller=>"zebra",:action=>"tacos"})
  get("/dice/5/4", {:controller=>"zebra",:action=>"tofu"})
  get("/", {:controller=>"zebra",:action=>"home"})
  get("/dice/:number_of_dice/:number_of_sides", {:controller=>"zebra",:action=>"flex"})
end
