Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  resources :user, only: %i(show edit update destroy)
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end