Outfithero3::Application.routes.draw do
  ### USERS ###

  # CREATE - Create new user
  get '/users/new', :controller => 'Users', :action => "new"
  post '/users', :controller => 'Users', :action => "create"

  # READ - Account details
  get '/users', :controller => 'Users', :action => 'index'
  get '/users/:id', :controller => 'Users', :action => "show"

  # UPDATE - Change account details
  get '/users/:id/edit', :controller => 'Users', :action => "edit"
  get '/users/:id', :controller => 'Users', :action => "update"

  # DELETE - Delete account
  delete '/users/:id', :controller => 'Users', :action => "destroy"


  ### PHOTOS ###

  # CREATE - Add a photo
  get '/pictures/new', :controller => 'Pictures', :action => "new"
  post '/pictures', :controller => 'Pictures', :action => "create"

  # READ - View photos
  get '/pictures/:id', :controller => 'Pictures', :action => "index"
  get '/pictures/:id/:pic_id', :controller => 'Pictures', :action => "show"

  # UPDATE - Change photo
  get '/pictures/:id/:pic_id/edit', :controller => 'Pictures', :action => 'edit'
  put '/pictures/:pic_id', :controller => 'Pictures', :action => 'update'

  # DELETE - Delete photo
  delete '/pictures/:pic_id', :controller => 'Pictures', :action => 'destroy'


  end
