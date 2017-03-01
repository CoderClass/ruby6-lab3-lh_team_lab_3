require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe ".alphabetical" do
    it "when there is no product" do
      expect(Product.alphabetical).to eq []
    end
    it "when there is one product" do
      product = Product.create!(name: "Lanh")
      expect(Product.alphabetical).to eq [product]
    end
    it "3 products order alphabetical" do
      product_a = Product.create!(name: "Lanh 2")
      product_b = Product.create!(name: "Hanh 1")
      product_c = Product.create!(name: "Huy Lanh")

      expect(Product.alphabetical).to eq [product_b, product_c, product_a]

    end
  end
end
