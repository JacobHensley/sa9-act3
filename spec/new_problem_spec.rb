require 'new_problem'

RSpec.describe VendingMachine do
    let(:vending) { VendingMachine.new() }

    describe "#purchase" do
      it "Decreases bottle count" do
        vending.purchase(5)
        expect(vending.get_inventory).to eq(15)
      end
    end
  
    describe "#restock" do
      it "Increases bottle count" do
        vending.restock(5)
        expect(vending.get_inventory).to eq(25)
      end
    end
  
    describe "#get_inventory" do
      it "Returns bottle count" do
        expect(vending.get_inventory).to eq(20)
      end
    end

    describe "#report" do
    it "Prints inventory" do
        expect { vending.report }.to output(
            a_string_including("Inventory: 20 bottles")
          ).to_stdout
    end
  end

end  