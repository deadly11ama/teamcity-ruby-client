require_relative 'api'

module TeamCity
  # Wrapper for the TeamCity REST API
  #
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include TeamCity::Client::Projects
  end
end