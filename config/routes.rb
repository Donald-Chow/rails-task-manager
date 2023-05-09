Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
# ###BIG COMMENT
#   # Create
#   # add new task
#   # form
#   get '/tasks/new', to: 'tasks#new', as: :new_task
#   # post
#   post '/tasks', to: 'tasks#create', as: :tasks

#   # Read
#   # list task
#   get '/tasks', to: 'tasks#index'
#   # see details of a task
#   get '/tasks/:id', to: 'tasks#show', as: :task

#   # Update
#   # edit a task (mark as complete / update & details)
#   # form
#   get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
#   # patch
#   patch '/tasks/:id', to: 'tasks#update'

#   # Destroy
#   # remove a task
#   delete '/tasks/:id/', to: 'tasks#destroy', as: :destroy_task
# ### BIG COMMENT

  resources :tasks
end
