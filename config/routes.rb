Rails.application.routes.draw do
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :articles
    end
  end

  post 'authenticate', to: 'authentication#authenticate'
end
