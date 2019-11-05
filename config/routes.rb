Rails.application.routes.draw do
  scope '(:locale)', locale: /en|ja|fr/ do #localeがないもともとのrouteもそのまま使える
    #　上のようにlocaleをurlに入れたい部分を全て書く。よくわからなければ、全てこの中に入れてしまえば良い。以下に例を示す
    root 'comments#index' # www.domain.com/:locale/ ホームに言語の情報がつく
    resources :comments  # www.domain.com/:locale/users/new　など
  end
end