require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'base example ' do
    assert_equal 500, Exercise.new.find_max_product(-10, -10, 5, 2, 1,1,1)
  end

  test 'only negative ' do
    assert_equal -100, Exercise.new.find_max_product(-10, -10, -1, -10, -10, -10)
  end

  test 'negative with 0 ' do
    assert_equal 0, Exercise.new.find_max_product(-10, -10, -1, 0, -10, -10, -10)
  end

  test 'only one big negative with 0 ' do
    assert_equal 0, Exercise.new.find_max_product(-100000, 0, 10, 100, 0, 0, 0, 0, 0)
  end

  test 'only one big negative without 0 ' do
    assert_equal 1000, Exercise.new.find_max_product(-100000, 1, 10, 100, 1, 1, 1, 1, 1)
  end
end
