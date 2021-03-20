Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/:id', to: 'cocktails#show'
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'
  get '/', to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: :destroy
end
