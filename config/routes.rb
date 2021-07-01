Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  get 'home/about' => 'homes#about'
  
  resources :books do
  end
  resources :users,only: [:show,:index,:edit,:update]

end