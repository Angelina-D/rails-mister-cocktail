Rails.application.routes.draw do
  get 'doses/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, except: :index do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
