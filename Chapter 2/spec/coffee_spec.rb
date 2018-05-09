class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    1.00 + ingredients.size * 0.25
  end

  def color
    ingredients.include?(:milk) ? :light : :dark
  end
end

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  context 'with milk' do
    before { coffee.add :milk }

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end

    # will display as pending

    # it 'is light in colour'
    # it 'is cooler than 200 degrees Fahrenheit'

    it 'is light in colour' do
      pending 'Colour not yet implemented'
      expect(coffee.color).to be(:light)
    end

    it 'is cooler then 200 degrees Fahrenheit' do
      pending 'Temperature not yet implemented'
      expect(coffee.temperature).to be < 200.0
    end
  end
end
