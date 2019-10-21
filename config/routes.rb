Rails.application.routes.draw do
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  post "/graphql", to: "graphql#execute"
  root to: 'blogs#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end

end
