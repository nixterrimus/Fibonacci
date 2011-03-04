require 'helper'

class TestFibonacci < Test::Unit::TestCase
  context "a fibbonacci sequence" do
    should "return 0 for 0 (base case)" do
      assert_equal 0, Fibonacci.nth(0)
    end
    
    should "return 1 for 1 (base case)" do
      assert_equal 1, Fibonacci.nth(1)
    end
    
    should "return 2 for 3" do
      assert_equal 2, Fibonacci.nth(3)
    end
    
    should "return 34 for 9" do
      assert_equal 34, Fibonacci.nth(9)
    end    
  end
  
  context "a fixnum instance" do
    should "respond to closest_fibonacci" do
     assert Fixnum.instance_methods.include? 'closest_fibonacci'
    end
    
    should "return 144 for closest fibonacci to 156" do
      assert_equal 144, 156.closest_fibonacci
    end
    
    should "return 89 for closest fibonacci to 99" do
      assert_equal 89, 99.closest_fibonacci
    end
    
  end
  
end
