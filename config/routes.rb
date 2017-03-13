Rails.application.routes.draw do

  # These two lines are from Active Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  # Was generated during scaffolding for our RESTful routes.
  resources :products

  root 'home#index'
  get '/show/:id' => 'home#show', id: /\d/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
