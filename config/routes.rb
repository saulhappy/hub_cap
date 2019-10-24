Rails.application.routes.draw do
  resources :maint_records
  resources :user_cars
  resources :families
  resources :users
  resources :cars
  resources :photos
  
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"


  root to: "photos#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
