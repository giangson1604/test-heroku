Rails.application.routes.draw do
  get 'posts/index'
  resources :posts do
  	resources :comments
  end
  
  root 'posts#index'
  get '/about', to: 'posts#about'
end
