Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :home
  get "up" => "rails/health#show", as: :rails_health_check
end
