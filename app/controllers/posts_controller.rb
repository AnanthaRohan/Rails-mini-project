class PostsController < ApplicationController
  def index
    posts = Post.all
    @list_of_posts = posts.order({:created_at => :desc})
    render({ :template => "post_templates/all_posts.html.erb"})
  end

  def create
    new_title = params.fetch("query_title")
    new_content = params.fetch("query_content")

    new_post = Post.new
    new_post.title = new_title
    new_post.content = new_content
    
    new_post.save
    
    redirect_to("/posts")

  end

end
