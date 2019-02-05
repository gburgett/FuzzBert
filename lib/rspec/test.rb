require 'rspec'

class FuzzBert::RSpec::Test
  def initialize(&block)
    @example_group = ::RSpec.describe(&block)
    @runner = RSpec::Core::Runner.new([])
  end

  def run(data)
    begin
      @runnerr.run_specs([@example_group])
    rescue StandardError => e
      
    end
  end
end

