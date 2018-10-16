require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_name_setter_updates_name
    #arrange

    #act
      @rocket.name = "Cool Rocket"
      actual = @rocket.name
      expected = "Cool Rocket"
    #assert
      assert_equal(expected, actual)
  end

  def test_colour_setter_updates_colour
    #act
      @rocket.colour = "Magenta"
      actual = @rocket.colour
      expected = "Magenta"
    #assert
      assert_equal(expected, actual)
  end

  def test_lift_off_returns_false_if_flying
    #arrange
      @flying_rocket = Rocket.new(flying: true)
    #act
      actual = @flying_rocket.lift_off
      expected = false
    #assert
      assert_equal(expected, actual)

  end

  def test_lift_off_returns_true_if_not_flying
    #arrange
      @not_flying_rocket = Rocket.new(flying: false)
    #act
      actual = @not_flying_rocket.lift_off
      expected = true
    #assert
      assert_equal(expected, actual)
  end

  def test_lift_off_sets_flying_to_true_if_not_flying
    #arrange
      @not_flying_rocket = Rocket.new(flying: false)
    #act
      @not_flying_rocket.lift_off
      actual = @not_flying_rocket.flying?
      expected = true
    #assert
      assert_equal(expected, actual)
  end

  def test_land_returns_true_if_flying
    #arrange
      @flying_rocket = Rocket.new(flying: true)
    #act
      actual =  @flying_rocket.land
      expected = true
    #assert
      assert_equal(expected, actual)
  end

  def test_land_sets_flying_to_false_if_flying

  end

  def test_land_returns_false_if_not_flying

  end

  def test_status_if_flying_return_message

  end

  def test_status_if_not_flying_return_message

  end


end
