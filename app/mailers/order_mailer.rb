class OrderMailer < ApplicationMailer

  # default parameters are valid for all methods
  default from: 'Endraum Test <endraum.test@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end

end
