Rails.application.routes.draw do
  devise_for :users
  get 'top/index'
 root to: "top#index"
 resources :top, only: [:new, :create]
end
