require 'pry'

class CashRegister

    attr_accessor :total, :last_price
    attr_reader :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_price = 0
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        quantity.times do 
        self.items << title
        end

        self.last_price = (price * quantity)

        self.total += ( price * quantity )
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total -= (self.total * @discount / 100)
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= self.last_price
    end
    
end
