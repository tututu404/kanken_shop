Rails.application.routes.draw do

  get 'home/index'

  root 'home#index'

  resources :orders, only: %i[index create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
