class CashRegister
    attr_accessor :items, :total, :price, :discount, :title

    def initialize(discount=0)
      @total=0
      @discount=discount
      @items=[]
    end

    def add_item(title, price, quantity=1)
      self.total += price * quantity
      quantity.times do
        @items.push(title)
        @items
      end
      @last_transaction = price * quantity
      @items
    end

    def apply_discount
        if  
            @discount == 0
            "There is no discount to apply."                
        else
            @total = @total * 0.80
            @total = @total.to_i
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @items.pop()
        @total = @total - @last_transaction
        if items == []
            @total = 0.0
            @total
        end
        
    end
 
end

