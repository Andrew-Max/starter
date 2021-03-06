Rails.application.routes.draw do
  devise_for :users, :skip => [:sessions, :registrations]
  # root to: 'devise/sessions#new'
  root to: 'users#index'
  as :user do
    get 'login' => 'devise/sessions#new'
    post 'login' => 'devise/sessions#create', as: :create_session
    get 'logout' => 'devise/sessions#destroy'
    get '/signup' => 'devise/registrations#new'
    post '/signup' => 'devise/registrations#create', as: :create_user
    get 'cancel'   => 'devise/registrations#cancel', as: :cancel_user
    get 'settings' => 'devise/registrations#edit'
    put 'settings' => 'devise/registrations#update', as: :update_user

  end

  get 'user_root' => 'users#index', as: :user_root
end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
