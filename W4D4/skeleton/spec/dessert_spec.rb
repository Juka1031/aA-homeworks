require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:dessert) { Dessert.new("cake", 5, "bob") }
  describe "#initialize" do
    it "sets a type" do
        expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do
        expect(dessert.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
        expect(dessert.ingredients.length).to eq(0)
    end

    it "raises an argument error when given a non-integer quantity" do
    expect { Dessert.new("cake", "17", "bob") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
        expect(dessert.ingredients.length).to eq(0)
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" 
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
        dessert.eat(1)
        expect(dessert.quantity).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
        expect {dessert.eat(6)}.to raise_error("not enough left!")
        end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
        expect(dessert.chef)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
