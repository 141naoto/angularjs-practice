Rails.application.routes.draw do
  get '/dashboard'      => 'templates#index'
  get '/todo_lists/:id' => 'templates#index'
  get '/templates/:path.html' => 'templates#template', constraints: { path: /.+/ }
root 'templates#index'

namespace :api, defaults: { format: :json } do
  resources :todo_lists, only: [:index, :show, :create, :destroy] do
    # except: [:index] を削除する
    resources :todos, except: [:new, :edit, :show]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
