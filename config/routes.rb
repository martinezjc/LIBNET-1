LIBNET::Application.routes.draw do

  get "idiomas/index"
  get "paises/new"
  get "bibliotecas/index"
  root 'sessions#new'

  #RECURSOS DISPONIBLES (CONTROLADORES)
  resources :usuarios
  resources :sessions, :only => [:new, :create, :destroy]
  resources :bibliotecas
  #resources :paises
  resources :idiomas


  #post '/paises/nuevopais' :to => 'paises#new'

  get 'login' => "sessions#new"
  get 'logout' => "session#destroy"
  get 'nuevabiblioteca' => "bibliotecas#new"
  get 'verbibliotecas' => "bibliotecas#index"

  get 'paises' => "paises#index"
  get 'nuevopais' => "paises#new"
  post 'verpaises' => "paises#show"
    
  get 'idiomas' => "idiomas#index"
  get 'nuevoidioma' => "idiomas#new"
  get 'veridioma' => "idiomas#show"


   
  #post "usuario_session/login" => "usuario_session#new" #, as: :login
  #post "usuario/logout" => "usuario_session#destroy" #, as: :logout

  #get "usuarios/index"
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
end
