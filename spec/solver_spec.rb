# frozen_string_literal: true

require_relative './spec_helper'
require_relative '../lib/solver'

describe Solver do
  context 'Test Fizzbuzz algorithm' do
    it 'the method returns fizzbuzz if the number is divisble by 3 and 5' do
      test1 = Solver.new
      expect(test1.fizzbuz(30)).to eq('fizzbuzz')
      expect(test1.fizzbuz(60)).to eq('fizzbuzz')
    end

    it 'the method returns buzz if the number is divisble by 5' do
      test3 = Solver.new
      expect(test3.fizzbuz(5)).to eq('buzz')
      expect(test3.fizzbuz(25)).to eq('buzz')
    end

    it 'the method returns fizz if the number is divisble 3' do
      test2 = Solver.new
      expect(test2.fizzbuz(3)).to eq('fizz')
      expect(test2.fizzbuz(18)).to eq('fizz')
    end

    it 'The method returns the number if not divisvle by 3 or 5' do
      test4 = Solver.new
      expect(test4.fizzbuz(7)).to eq('7')
      expect(test4.fizzbuz(11)).to eq('11')
    end
  end
end

describe Solver do
  context 'Reverse Tests' do
    it 'The method reverse should reverse the string' do
      test5 = Solver.new
      expect(test5.reverse('hello')).to eq('olleh')
      expect(test5.reverse('good')).to eq('doog')
    end
  end
end

describe Solver do
  context 'Factorial tests' do
    it 'the factorial method is called recursively' do
      test6 = Solver.new
      expect(test6).to receive(:factorial).with(3).ordered.and_call_original
      expect(test6).to receive(:factorial).with(2).ordered.and_call_original
      expect(test6).to receive(:factorial).with(1).ordered.and_call_original
      test6.factorial(3)
    end

    it 'The method take an integer as a parameter and return its factorial:' do
      test7 = Solver.new
      expect(test7.factorial(3)).to eq(6)
      expect(test7.factorial(6)).to eq(720)
    end

    it 'The method raise an exception if the argument is a negative number:' do
      test8 = Solver.new
      expect { test8.factorial(-100) }.to raise_exception(Exception)
      expect { test8.factorial(-17) }.to raise_exception(Exception)
    end
  end
end
