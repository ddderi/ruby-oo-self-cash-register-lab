class CashRegister
    attr_reader 
    attr_accessor  :total, :discount, :items, :price
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @price = price
    end
    def add_item(title, price, quantity = 1)
        self.total+= (price * quantity)
        @price = price * quantity
        if quantity > 1 
            quantity.times do
        self.items << title 
            end
        else self.items << title
        end
    end
    def apply_discount
        if self.discount > 0
        self.total-=(self.total * self.discount)/100
        "After the discount, the total comes to $#{self.total}."
        else "There is no discount to apply."
        end
    end
    
    def void_last_transaction
        self.total-=self.price
        # if self.items.length() < 1 
        #     @total = 0.0
        # end
    end
end
