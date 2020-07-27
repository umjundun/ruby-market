class Projects::CommentsController < ApplicationController
  before_action :set_commentable

  private
  def set_commentable
    @commentable = Project.find(params[:project_id])
  end
end
