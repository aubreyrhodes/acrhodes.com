require 'rubygems'
require 'middleman/rack'
require "middleman-core/load_paths"
::Middleman.setup_load_paths

run Middleman.server
