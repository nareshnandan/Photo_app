Rails.application.routes.draw do
  resources :pins
  devise_for :users
  root 'home#index'
  get 'home/about'

  # Add this line to redirect to the login page after logout
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
