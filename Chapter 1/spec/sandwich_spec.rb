Sandwich = Struct.new(:taste, :toppings)

# Without hooks, helpers or let

# RSpec.describe 'An ideal sandwich' do
#   it 'is delicious' do
#     sandwich = Sandwich.new('delicious', [])
#
#     taste = sandwich.taste
#
#     expect(taste).to eq('delicious')
#   end
#
#   it 'lets me add toppings' do
#     sandwich = Sandwich.new('delicious', [])
#
#     sandwich.toppings << 'cheese'
#     toppings = sandwich.toppings
#
#     expect(toppings).not_to be_empty
#   end
# end

# Using hooks

RSpec.describe 'An ideal sandwich' do
  before { @sandwich = Sandwich.new('delicious', []) }
  it 'is delicious' do
    taste = @sandwich.taste

    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    @sandwich.toppings << 'cheese'
    toppings = @sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
