Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #INDEX
  get 'tasks', to: 'tasks#index'

  #CREATE
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  #UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  #SHOW
  get 'tasks/:id', to: 'tasks#show', as: :task

  #DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
  delete 'tasks', to: 'tasks#destroy'
end
