
require 'fizzbuzz'
describe 'fizzbuzz' do
  nums = *(1..100)
  nums.each do |i|
    if i % 3 == 0 && i % 5 == 0
      it 'returns "fizzbuzz" if a multiple 3 & 5' do
        expect(fizzbuzz(i)).to eq "fizzbuzz"
      end
    elsif i % 3 == 0
      it 'returns "fizz" if a multiple of 3' do
        expect(fizzbuzz(i)).to eq "fizz"
      end
    elsif i % 5 == 0
      it 'returns "fizz" if a multiple of 5' do
        expect(fizzbuzz(i)).to eq "buzz"
      end
    else
      it "returns #{i} if not a multiple" do
        expect(fizzbuzz(i)).to eq i
      end
    end
  end
end
