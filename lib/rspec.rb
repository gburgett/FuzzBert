require 'fuzzbert'

require_relative './rspec/test_suite'

module FuzzBert::RSpec
  def self.fuzz(*args, &blk)
    suite = FuzzBert::RSpec::TestSuite.create(*args, &blk)
    raise RuntimeError.new "No 'deploy' block was given" unless suite.test
    raise RuntimeError.new "No 'data' blocks were given" unless suite.generators
    FuzzBert::AutoRun.register(suite)
  end
end