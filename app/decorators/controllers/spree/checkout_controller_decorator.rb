Spree::CheckoutController.class_eval do
  helper Spree::AlipayHelper
end

Spree::OrdersController.class_eval do
  helper Spree::AlipayHelper
end