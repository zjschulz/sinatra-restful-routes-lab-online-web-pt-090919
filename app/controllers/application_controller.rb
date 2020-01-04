class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # CREATE
  get '/new' do
    erb :new
  end
 
  post '/recipes' do
    @recipe = Recipe.create(:title => params[:title], :content => params[:content])
    redirect to "/articles/#{@article.id}"
  end
  
end
