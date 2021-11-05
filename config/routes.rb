Rails.application.routes.draw do
 
 #likeに関するルーティンを整理しています
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  
 #loginに関するルーティンを整理しています
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

 #usersに関するルーティンを整理しています
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  post "users/:id/update" => "users#update"
  get "users/:id/likes" => "users#likes"

 #postsに関するルーティンを整理しています
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

 #topに関するルーティンを整理しています
  get "/" => "home#top"
  get "about" => "home#about"

end
