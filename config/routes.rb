Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # READ & CREATE
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id', to: 'tasks#show', as: :task
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
