require "bundler/setup"
require "minitest/autorun"
require "minitest/reporters"

class Calc
    def add(x, y)
        x + y
    end
end

class TestCalc < Minitest::Test
    def setup
        @calc = Calc.new
    end

    def test_add
        expected = 5
        actual = @calc.add(2, 3)
        assert_equal expected, actual
    end
end

Minitest::Reporters.use!
