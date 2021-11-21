# Give this access to the context of your file
require_relative '../calc.rb'

describe Calculator do
  context "class validation" do
    it "should require integers as parameters" do
      expect { Calculator.new("Pizza", true) }.to raise_error
    end
    
    it "should require numbers greater than 0" do
      expect { Calculator.new(-10, -20) }.to raise_error
    end
    # more complicated one
    it "can only be instantiated with numbers less than 1000" do
      expect { Calculator.new(1001, 2000) }.to raise_error
    end
  end

  context "#add_values" do
    let(:value_1) { 1 }
    let(:value_2) { 2 }
    let(:calculator) do
      Calculator.new(value_1, value_2)
    end

    it "should return the two added values" do
      expect(calculator.add_values).to eq(3)
    end
  end
end