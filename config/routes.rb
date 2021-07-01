Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  get 'home/about' => 'homes#about'
  
  resources :books, only: [:show, :index, :create, :edit, :update, :destroy] do
    # いいね機能
    resource :favorites, only: [:create, :destroy]
    # コメント機能実装
    resources :book_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:show,:index,:edit,:update]

end