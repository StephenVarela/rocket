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
    #arrange
      @flying_rocket = Rocket.new(flying: true)
    #act
      @flying_rocket.land
      actual = @flying_rocket.flying?
      expected = false
    #assert
      assert_equal(expected, actual)
  end

  def test_land_returns_false_if_not_flying
    #arrange
      @not_flying_rocket = Rocket.new(flying: false)
    #act
      actual =  @not_flying_rocket.land
      expected = false
    #assert
      assert_equal(expected, actual)
  end

  def test_status_if_flying_return_message
      @not_flying_rocket = Rocket.new(flying: false)

      actual = @not_flying_rocket.status
      exp = 'lift off!'
      assert_match(exp, actual)
  end

  def test_status_if_not_flying_return_message
    @flying_rocket = Rocket.new(flying: true)

    actual = @flying_rocket.status
    exp = 'through the sky!'
    assert_match(exp, actual)
  end

  def test_check_name_initialize
    @my_rocket = Rocket.new(name: 'Cool Rocket')

    actual = @my_rocket.name
    expected = 'Cool Rocket'

    assert_equal(expected, actual)
  end

  def test_check_name_default
    @my_rocket = Rocket.new

    actual = @my_rocket.name
    prefixes = ["aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpio", "sagittarius", "capricorn", "aquarius", "pisces"]

    suffixes = ["i", "ii", "iii", "iv", "v", "vi", "vii", "viii", "ix", "x"]

    collection = []

    prefixes.each do |prefix|
      suffixes.each do |suffix|
        collection << "#{prefix.capitalize} #{suffix.upcase}"
      end
    end

    assert_includes(collection, actual)
  end

  def test_check_colour_initialize
    @my_rocket = Rocket.new(colour: 'Violet')

    actual = @my_rocket.colour
    expected = 'Violet'

    assert_equal(expected, actual)
  end

  def test_check_colour_default
    @my_rocket = Rocket.new

    actual = @my_rocket.colour
    colour_list = ["red", "yellow", "blue", "green", "purple", "orange"]

    assert_includes(colour_list, actual)
  end

  def test_check_flying_initialize

  end

  def test_check_flying_default

  end

end
