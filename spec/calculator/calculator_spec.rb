require 'calculator'

# subject = classe que esta sendo descrita (Calculator)

describe Calculator, 'Sobre a Calculadora' do
  # subject explicito
  # subject(:calc) { Calculator.new } # renomeia para ser usado como calc

  # subject implicito
  subject(:calc) { described_class.new } # renomeia para ser usado como calc
  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(1, 1)
      expect(result).to eq(2)
      # expect(result).not_to eq(3)
    end

    it 'with negative and positive numbers' do
      result = calc.sum(-5, 7)
      expect(result).to eq(result)
    end

    it 'with negative numbers' do
      result = calc.sum(-5, -7)
      expect(result).to eq(result)
    end

    xit 'with numbers'
  end
end
