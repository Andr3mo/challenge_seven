Rails.application.routes.draw do

  get 'customers/alphabetized' => 'finder#alphabetized'

  get 'customers/missing_email' => 'finder#missing_email'

  get 'customers' => 'finder#index'

  root to: 'finder#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
