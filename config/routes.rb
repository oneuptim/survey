Rails.application.routes.draw do
  get '/' => 'survey#index'

  post '/create' => 'survey#create'

  get '/result' => 'survey#result'

  get '/random' => 'survey#random'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
