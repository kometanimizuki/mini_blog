Rails.application.routes.draw do
  devise_for :userrails
  devise_for :users
  root 'tweets#index'
  get 'tweets', to: 'tweets#index'
  get 'tweets/new', to: 'tweets#new'
  post 'tweets', to: 'tweets#create'
  delete  'tweets/:id', to: 'tweets#destroy'
  get   'users/:id', to: 'users#show'
end
