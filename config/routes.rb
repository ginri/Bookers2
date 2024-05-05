Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users
  resources :books , only: [:create, :index, :show, :edit, :update, :destroy]
  get 'home/about' => 'homes#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
