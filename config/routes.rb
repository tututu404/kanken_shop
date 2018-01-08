Rails.application.routes.draw do

  get 'reviews/create'

  get 'reviews/destroy'

  get 'home/index'

  root 'home#index'

  resources :orders, only: %i[index create destroy]
  resources :calls, only: %i[create destroy]
  resources :backpacks, only: :update
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
