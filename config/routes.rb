Rails.application.routes.draw do

  devise_for :users

  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"

  resources :users, only: [:show, :index]

  resources :blog_posts

  resources :tweets do
    resource :like
  end

  resources :relationships

  root "blog_posts#index"

  root "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
