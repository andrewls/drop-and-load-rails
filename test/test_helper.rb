$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'drop_and_load'

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use! [MiniTest::Reporters::ProgressReporter.new(color: true)]
