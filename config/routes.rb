Rails.application.routes.draw do

  resources :users, only: [:index, :create, :update,]
  get '/users/:id', to: "users#show"
  get "/players", to: "players#index"
  get "/me", to: "users#show" #check to see if you're logged 
  
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  
  delete "/logout", to: "sessions#destroy"

end
