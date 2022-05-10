class ArticlesController < ApplicationController

  # READ

  def index
    @articles = Article.all
  end

  def show
    @task = Task.find(params[:id])
  end


  # CREATE

  def new
      @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to task_path(@article)
    else
      render 'new.html.erb'
    end

    # UPDATE

  end



end
