Rails.application.routes.draw do

  get 'home/about'
root 'homes#top'


  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }




resources :users, only: [:show, :edit, :update, :index,]

resources :books do
 resource :favorites, only: [:create, :destroy]
end
end
