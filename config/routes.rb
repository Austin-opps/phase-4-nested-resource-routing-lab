Rails.application.routes.draw do
  resources :items do
    resources :magazines, only: [:index]
  end
  resources :users do
    resources :items, only: [:index, :show, :create]
  end
end
