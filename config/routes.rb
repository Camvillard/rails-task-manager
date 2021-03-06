Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #1. add a route to list all the tasks
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create', as: :task_create

  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/:id', to: 'tasks#show', as: :task

  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch '/tasks/:id', to: 'tasks#update'

  patch 'tasks/:id/done', to: 'tasks#done', as: :task_done

  delete '/tasks/:id', to: 'tasks#destroy'
end
