module Luhn
  def self.is_valid?(number)
    final_nums = []
    digits = number.to_s.split('').map(&:to_i) 
    digits.reverse.each_with_index do |n, index|
      if index % 2 == 0
        final_nums << n
      else
        double_val = n * 2
        
        if double_val >= 10
          double_val -= 9
        end
        final_nums << double_val
      end
    end
    

    sum = final_nums.inject(:+)

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end