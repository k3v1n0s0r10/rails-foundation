Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "pages/contact"
  get "about", to: "pages#about"
  get "pages/home"
  get "blog", to: redirect("https://kdev-portfolio.netlify.app")
  get "error", to: "pages#error"

  resources :projects

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"

  get "*path", to: redirect("/error")
end
