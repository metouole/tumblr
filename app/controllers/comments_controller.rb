class CommentsController < ApplicationController



	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comment.create(comment_params)

		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comment.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)
	end



	private 
	def comment_params
		params.required(:comment).permit(:name, :body)
	end

end
