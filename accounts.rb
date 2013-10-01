require 'sinatra'
require 'sinatra/reloader'

ACCOUNTS = {}

get '/accounts' do
  @accounts = ACCOUNTS.values

  erb :account_list
end

get '/accounts/new' do
  @action = '/accounts'
  @method = 'post'

  erb :form
end

get '/accounts/:id' do
  # show
end

get '/accounts/:id/edit' do
  @account = ACCOUNTS[params[:id]]
  @action = "/accounts/#{params[:id]}"
  @method = 'put'

  erb :form
end

post '/accounts' do
  # create
end

put '/accounts/:id' do
  # update
end

delete '/accounts/:id' do
  # delete
end
