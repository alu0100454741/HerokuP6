$:.unshift File.expand_path(File.dirname(__FILE__)+'/lib/rsack/')
$:.unshift File.dirname(__FILE__)

require './lib/rsack/ppt.rb'

  use Rack::ShowExceptions
  use Rack::Lint
  use Rack::Session::Cookie, 
	  :key => 'rack.session', 
	  :domain => 'young-reef-5332.herokuapp.com',
	  :secret => 'some_secret'
  use Rack::Static, :urls => ['/public']

  run RockPaperScissors::App.new


