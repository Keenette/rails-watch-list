Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new"
  get "lists/:id/bookmarks/new", to: "lists#new_bookmark", as: :new_bookmark
  get "lists/:id", to: "lists#show"
  post "lists", to: "lists#create"

end
