Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes', to: 'recipes#index'
      post 'recipes', to: 'recipes#create'
      get '/show/:id', to: 'recipes#show'
      delete 'destroy/:id', to: 'recipes#destroy'
    end
  end
  root 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
