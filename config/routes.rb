Rails.application.routes.draw do
  namespace :api do
    get '/fortune_url' => 'fortune_pages#fortune_action'
    get '/random_url' => 'fortune_pages#random_action'
    get '/refresh_url' => 'fortune_pages#refresh_action'
    get '/bottles_url' => 'fortune_pages#bottles_action'
  end
end
