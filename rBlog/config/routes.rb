Rails.application.routes.draw do
  namespace :admin do
    resources :posts
    resources :categories
    resources :comments, only: :destroy
    resources :users
    resources :sessions, only: %i[new create]
  end

  resources :posts, only: %i[index show]
  resources :comments, only: :new
  resources :categories, only: :show
  resources :contacts, only: %i[new create]
  resources :about, only: :index
  root 'posts#index'
end
