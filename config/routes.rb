Rails.application.routes.draw do
  #devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  root "home#index"

  resources :users, only: :show do
    collection do
      get '/profile', to: 'users#profile'
    end
  end

  resources :relationships, only: [:create, :destroy]
  resources :tweets, only: [:create, :index]
end
