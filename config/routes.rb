Rails.application.routes.draw do
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'

  root 'static_pages#home'
  get '/about',   to: 'static_pages#about'
  get '/help',    to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
