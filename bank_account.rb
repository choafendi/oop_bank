# bank_account.rb
# class BankAccount
#    attr_reader :balance
#    def initialize(amount, account_holder)
#      @balance = amount
#    end
#    def deposit (amount)
#      @balance += amount
#    end
#    def withdrawal(amount)
#      @balance -= amount
#    end
#  end
class BankAccount
  attr_reader :balance
  @@minimum_balance = 200

  def initialize(opening_balance, account_holder)
    raise ArgumentError if opening_balance < @@minimum_balance
    @balance = opening_balance
  end

  def deposit amount
    @balance += amount
  end

  def withdraw amount
    @balance -= amount
  end

  def transfer amount, account
    withdraw amount
    account.deposit amount
  end

  def self.minimum_balance= amount
    @@minimum_balance = amount
  end
end
Contact GitHub API Training Shop Blog About
