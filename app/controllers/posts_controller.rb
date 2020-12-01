class PostsController < ApplicationController
  def index
    @posts=Post.all.order(id: 'DESC')
  end

  # def new
  #   @posts=Post.all.order(created_at: 'desc')
  #   @post=Post.new
  # end

  def create
    @post=Post.new
    Post.create(post_params)
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
    if post.checked 
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
  
private #プライベートメソッドで、ストロングパラメータを記述。

def post_params
    params.require(:post).permit(:content)
  end
end
