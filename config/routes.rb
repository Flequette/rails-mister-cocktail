Rails.application.routes.draw do
resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create ]
  end
  root to: "cocktails#index"

  resources :doses, only: [ :destroy]

end
