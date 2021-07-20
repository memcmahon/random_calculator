require './lib/calculator'
require 'pry'

RSpec.describe Calculator do
  it "exists" do
    calc = Calculator.new

    expect(calc).to be_a(Calculator)
  end

  it "can generate a random number" do
    calc = Calculator.new

    expect(calc.get_num).to be_a(Integer)
    expect(calc.get_num).to be_between(0, 100)
  end

  it "can add two random numbers" do
    calc = Calculator.new

    expect(calc.add_nums).to be_a(Integer)
    expect(calc.add_nums).to be_between(0, 200)
  end

  it "can square a random number" do
    calc = Calculator.new

    expect(calc.square_num).to be_a(Integer)
    expect(calc.square_num).to be_between(0, 10_000)
  end
end
