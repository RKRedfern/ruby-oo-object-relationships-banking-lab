class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @status = "open"
        @balance = 1000
        @name = name
    end

    def deposit(deposit_amount)
        self.balance += deposit_amount
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def close_account
        self.status = "closed"
    end

    def valid?
        balance > 0 && status == "open"
    end
end
