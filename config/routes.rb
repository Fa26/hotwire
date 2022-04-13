Rails.application.routes.draw do
  resources :posts

  root 'sessions#login'
  #user route
  resources :users,only: [:new,:create,:edit,:update,:show,:destroy]

  #sessions routes
  get '/login' ,to:'sessions#login'
  post '/login',to: 'sessions#create'
  post '/logout',to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
    #root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
