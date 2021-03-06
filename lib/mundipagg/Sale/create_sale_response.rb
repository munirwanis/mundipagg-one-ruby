class CreateSaleResponse
  # Lista as transa��es de Cart�o de Cr�dito
  attr_accessor :CreditCardTransactionResultCollection

  # Lista as transa��es de boleto
  attr_accessor :BoletoTransactionResultCollection

  # Dados de retorno do pedido
  attr_accessor :OrderResult

  # Chave do comprador. Utilizada para identificar um comprador no gateway
  attr_accessor :BuyerKey

  def initialize
    @CreditCardTransactionResultCollection = Array.new
    @BoletoTransactionResultCollection = Array.new
  end
end