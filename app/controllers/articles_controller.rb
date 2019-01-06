class ArticlesController < ApplicationController
    
    def new
    end
    
  def show
    @article = Article.find(params[:id])
  end
 
    
    
def create
  @article = Article.new(article_params)
 
  @article.save
  redirect_to @article
end
    
    
def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
end
    
    
 def youtube_id
     
     @article.title = @song
     
    YouTubeAddy.extract_video_id(@song.url)
  end
 
private
  def article_params
    params.require(:article).permit(:title, :text)
  end
    
    
    
end
