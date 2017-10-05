
require "./credit_check_runner"
require "test/unit"


class CreditCheckTest  < Test::Unit::TestCase
  def test_multiply
    assert_equal false, Credit_check.new("1111111111").validate
    assert_equal true, Credit_check.new("6011797668867828").validate
    assert_equal false, Credit_check.new("50").validate

  end
end
