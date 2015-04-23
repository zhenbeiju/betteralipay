module Spree
  module AlipayHelper
    def link_to_partner_trade(payment_method, order=nil)
      if order.nil?
        link_to image_tag('alipay.png', :alt=> I18n.t('spree.checkout.payment.alipay.partner_trade')), alipay_partner_trade_path(:payment_method_id => payment_method.id)
      else
        link_to image_tag('alipay.png', :alt=> I18n.t('spree.checkout.payment.alipay.partner_trade')), alipay_partner_trade_path(:payment_method_id => payment_method.id, :order_number => order.number)
      end
    end
  end
end
