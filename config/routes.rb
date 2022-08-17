Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/restaurants", to: "restaurants#index", as: :restaurants

  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "/restaurants", to: "restaurants#create"

  # get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

end
