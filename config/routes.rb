Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  get 'posts/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :show, :create]
end
