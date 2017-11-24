Rails.application.routes.draw do

  get 'reviews/new'

  get 'reviews/create'

resources :cocktails do
    resources :doses, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  root to: "cocktails#index"

  resources :doses, only: [ :destroy]

end
