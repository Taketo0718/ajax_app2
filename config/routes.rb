Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'posts', to: 'posts#index'
  root to:'posts#new'
  resources :posts, only: [:new,:create] #resourcesメソッド
end
