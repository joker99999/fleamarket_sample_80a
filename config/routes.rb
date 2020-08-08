Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :signup do
    collection do
      get "step1"
      get "step2"
      get "step3"
      get "step4"
      get "done"
    end
end
