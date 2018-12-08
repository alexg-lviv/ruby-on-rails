Rails.application.routes.draw do
  resources :comments
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'pages/info'
  resources :ideas
  root "ideas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
