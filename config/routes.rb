Rails.application.routes.draw do

  get("/", { :controller => "posts", :action => "index" })
  get("/posts", { :controller => "posts", :action => "index" })
  get("/insert_post", { :controller => "posts", :action => "create" })



end
