Rails.application.routes.draw do

  get 'about', to: 'about#index'

  get 'app', to: 'user_page#index'

  get 'home/index'

  resource :user_page do
    member do
      post :access_token, to: 'user_page#access_token'
      get :accounts, to: 'user_page#accounts'
      get :transactions, to: 'user_page#transactions'
      get :item, to: 'user_page#item'
    end
  end

  devise_for :users, :controllers => { registrations: 'registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
