Rails.application.routes.draw do

  root "photos#index"
  
  devise_for :users

  # , controllers: { sessions: 'users/sessions' }

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username/liked" => "users#liked", as: :liked

  # get ":username/feed" 
  get ":username/followers" => "users#followers", as: :followers
  # get ":username/following"

  get ":username" => "users#show", as: :user

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
