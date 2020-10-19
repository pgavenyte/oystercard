require 'oystercard'

describe Oystercard do

  describe "#balance" do
    it "oystercard shows balance" do 
      card = Oystercard.new
      expect(subject.balance).to eq 0
    end
  end
  
  describe "#top_up" do

    it "adds money to oystercard" do
      card = Oystercard.new
      subject.top_up(5)
      expect(subject.balance).to eq 5
    end

    it "raises an error if limit is exceeded" do
      max_balance = Oystercard::DEFAULT_LIMIT
      subject.top_up(max_balance)
      expect { subject.top_up 1}.to raise_error "The limit of #{max_balance} is exceeded."
    end
  end
end