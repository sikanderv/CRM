Rails.application.routes.draw do
  # get 'finder/index'

  # get 'finder/alphabetized'

  # get 'finder/missing_email'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'finder#index'
  # resources 'customers', only: [:index]
  get '/customers/missing_email' => 'finder#missing_email', as: "missing_email"
  get '/customers/alphabetized' => 'finder#alphabetized', as: "alphabetized"
end
