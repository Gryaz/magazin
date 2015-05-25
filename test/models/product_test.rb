require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	fixtures :products
test "Свойства товара не должны оставаться пустыми" do
  	product = Product.new
  	assert product.invalid?
  	assert product.errors[:title].any?
  	assert product.errors[:descriptions].any?
  	assert product.errors[:image_url].any?
  	assert product.errors[:price].any?
  end
end
