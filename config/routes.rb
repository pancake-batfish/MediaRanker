Rails.application.routes.draw do
  root "works#index"

  resources :works, except: [:new]
  get "/upvote/:id", to: "works#upvote", as: "upvote"

  resources :users, only: [:index, :show]

  get "/login", to: "sessions#login_form"
  post "/login", to: "sessions#login"
  delete "/logout", to: "sessions#logout"


  get "/:category", to: "works#category_index", as: "category"
  get "/:category/new", to: "works#new", as: "new_work"

end
