require 'data_mapper'
require 'dm-validations'
require './app/models/link'
require './app/models/tag'
require './app/models/user'
# require 'spec_helper'

env = ENV['RACK_ENV'] || 'development'

# if ENV['RACK_ENV'] == 'production'
#   DataMapper.setup(:default, ENV['DATABASE_URL'])
# else
#   DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
# end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{env}")

# require 'byebug'; byebug

DataMapper.finalize

DataMapper.auto_upgrade!
