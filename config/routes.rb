Rails.application.routes.draw do
  resources :items, only: [:index]

  resources :users do
    resources :items, only: [:index, :show, :create]
  end
end
