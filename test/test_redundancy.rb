require "minitest/autorun"
require "redundancy"

class HistoryTest < Minitest::Test
  def test_run
  end
end

class Worker < SimpleDelegator
  def work
  end
end

describe Worker do
  before do
    @worker = Worker.new(Object.new)
    @worker.extend Minitest::Expectations
  end

  it "must respond to work" do
    _(@worker).must_respond_to :work
  end
end