class CommentsController < ApplicationController
    before_action :authentic_user!

    def create
        @comment = @commentable.comment.new comment(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to @commentable, notice: "Your comment was posted"
    end

    private

    def comment_params
        params.require(:comment).permit(:body)
    end
end
