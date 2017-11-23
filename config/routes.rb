Rails.application.routes.draw do
  # get 'dose/description:text'
  # get 'ingredient/name:string'
  # get 'cocktail/name:string'

  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end

  # resources :cocktails
  resources :doses, only: :destroy


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
