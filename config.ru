# To use with thin 
#  thin start -p PORT -R config.ru

require 'application'

disable :run
set :environment, :production

run Sinatra::Application