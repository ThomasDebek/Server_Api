Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      # localhost:3000/api/v1/numbers/single/3 => odd
      get 'numbers/single/:number', to: 'numbers#single'
      # Send a whole array, get back an array of odd/even
      post 'numbers/batch', to: 'numbers#batch'
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
