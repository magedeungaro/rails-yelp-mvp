Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'restaurants#index'

  resources :restaurants, only: %i[index new create] do
    resources :reviews, only: %i[new create]
  end
end
