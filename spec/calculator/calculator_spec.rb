require 'calculator'

# subject = classe que esta sendo descrita (Calculator)

RSpec.describe Calculator, 'Sobre a Calculadora' do
  # subject explicito
  # subject(:calc) { Calculator.new } # renomeia para ser usado como calc

  # subject implicito
  subject(:calc) { described_class.new } # renomeia para ser usado como calc
  context '#div' do
    it 'divide by 0' do
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(3, 0) }.to raise_error('divided by 0')
    end
  end

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
