class Credit_check
    attr_accessor :card_number

  def initialize (card_number)
    @card_number = card_number
  end

  def multiply_digits
    @card_number = @card_number.each_char.map(&:to_i).reverse 
     i = 1
     while i <= @card_number.length
         if i.odd?
           product = @card_number[i].to_i*2 # multiply every other digit
           @card_number[i] = product #replace the old digit with the new one
         end
         i+=1
      end
    singleify()
    validate()
  end

  def singleify
     @card_number.each_with_index do |x,i|
        if @card_number[i].to_s.length > 1 #if number is double digit subtract 9
       double_digit = @card_number[i].to_i
       @card_number[i] = double_digit-9
        end
     end
  end
  def validate
       if @card_number.sum % 10 == 0
         p true
      else
         p false
      end
  end

end





# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"