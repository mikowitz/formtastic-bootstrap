$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# require 'rspec'
# require 'rspec_tag_matchers'
# require 'rubygems'

require 'bundler'
Bundler.setup

# Find Formtastic and grab its testing support first.
formtastic_full_gem_path = Bundler.load.specs.find{|s| s.name == "formtastic" }.full_gem_path
require File.join(formtastic_full_gem_path, 'spec', 'spec_helper.rb')

require 'formtastic-bootstrap'
require File.join(File.dirname(__FILE__), "support", "custom_macros.rb")

# RSpec.configure do |config|
#   config.include RspecTagMatchers  
#   config.include CustomMacros
# end
