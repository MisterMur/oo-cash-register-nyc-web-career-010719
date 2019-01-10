
class CashRegister
  
  attr_accessor :discount, :total, :title
  @@items = []
  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title,price,quantity=0)
    
    if quantity!=0
      @total += (price*quantity)
    else
      @total +=price
    end
    @@items << title
  end
  
  def apply_discount
    if discount == nil 
       "There is no discount to apply."
    else
      price = (@discount/100.0)
      puts discount
      @total -= total*price
      "After the discount, the total comes to $#{@total.to_i}."
    end
  
  end
  
  def items 
    @@items
  end
  
  
  
  
end