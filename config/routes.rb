Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  
  resources :users,only:[:create]
  resources :tasks
end
