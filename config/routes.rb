Rails.application.routes.draw do
  get 'game', to: 'gamer#game'

  get 'score', to: 'gamer#score'
  post 'score', to: 'gamer#score'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
