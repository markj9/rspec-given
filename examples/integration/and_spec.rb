require 'rspec/given'
require 'example_helper'
# require 'flexmock/rspec'

describe "And" do
#   include FlexMock::MockContainer

  describe "mocking" do
    Given(:m) { flexmock("OK") }
    Given { m.should_receive(:and_ran).once }
    When { m.and_ran }
    Then { }
  end

  # Given(:info) { [] }
  # Given(:m) { flexmock("mock") }

  # describe "And is called after Then" do
  #   Given {
  #     m.should_receive(:and_ran) }
  #   Then { info << "T" }
  #   And {
  #     info.should == ["T"]
  #     m.and_ran
  #   }
  # end

  # describe "And is called only once with multiple Thens" do
  #   Then { info << "T" }
  #   Then { info << "T2" }
  #   And { info.should == ["T"] }
  # end

  # describe "Inherited Ands are not run" do
  #   Then { info << "T-OUTER" }
  #   And { info << "A-OUTER" }
  #   And { info.should == ["T-OUTER", "A-OUTER"] }

  #   context "inner" do
  #     Then { info << "T-INNER" }
  #     And { info << "A-INNER" }
  #     And { info.should == ["T-INNER", "A-INNER"] }
  #   end
  # end

  # describe "Ands require a Then" do
  #   begin
  #     And { }
  #   rescue StandardError => ex
  #     @message = ex.message
  #   end

  #   it "should define a message" do
  #     message = self.class.instance_eval { @message }
  #     message.should =~ /and.*without.*then/i
  #   end
  # end

end
