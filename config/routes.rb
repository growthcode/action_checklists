Rails.application.routes.draw do
  get 'pages/home'

  root to: 'pages#home'

  devise_for :users

  resources :plans

end
