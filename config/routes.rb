# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   get "/restaurants", to: "restaurants#index"
#   get "/restaurants/new", to: "restaurants#new"
#   post "/restaurants", to: "restaurants#create"
#   get "/restaurants/:id", to: "restaurants#show", as: :restaurant

#   # Defines the root path route ("/")
#   # root "articles#index"
# end

Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    collection do
      get :top
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews
end
