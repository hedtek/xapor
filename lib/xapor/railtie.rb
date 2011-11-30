require 'rails'

module Xapor
  class Railtie < ::Rails::Railtie
    ActiveSupport.on_load(:active_record) do
      ActiveRecord::Base.send(:include, Xapor::ModelIntegration)
    end
  end
end
