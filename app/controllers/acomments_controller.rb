class AcommentsController < ApplicationController
  before_action :find_article
  def create
   @acomment = @article.acomments.create(params[:acomment].permit(:content))
    @acomment.user = current_user
    if @acomment.save
      redirect_to :back
  else
    render 'new'
    end
   end

  private
  def find_article
    @article = Article.find(params[:article_id])

  end

end
