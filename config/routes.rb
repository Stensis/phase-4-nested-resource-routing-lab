Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :user, only: [:show] do
  #nested resource for review
  resources :item, only: [:show, :index, :create]
  end
end
