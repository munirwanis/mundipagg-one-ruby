class BoletoTransactionData
  # Url para visualiza��o do boleto
  attr_accessor :BoletoUrl

  # C�digo de barras do boleto
  attr_accessor :Barcode

  # Status do boleto
  attr_accessor :BoletoTransactionStatus

  @@BoletoTransactionStatusEnum = {
      # Gerado
      :Generated => '1',

      # Visualizado
      :Viewed => '2',

      # Pago com valor abaixo
      :Underpaid => '3',

      # Pago com valor maior
      :Overpaid => '4',

      # Pago
      :Paid => '5',

      # Cancelado
      :Voided => '6',

      # Com erro
      :WithError => '99'
  }

  # Chave da transa��o. Utilizada para identificar a transa��o de boleto no gateway
  attr_accessor :TransactionKey

  # Valor original do boleto em centavos
  attr_accessor :AmountInCents

  # N�mero do documento
  attr_accessor :DocumentNumber

  # Identificador da transa��o no sistema da loja
  attr_accessor :TransactionReference

  # Data de expira��o do boleto
  attr_accessor :ExpirationDate

  # N�mero do banco
  attr_accessor :BankNumber

  # Valor total pago em centavos
  attr_accessor :AmountPaidInCents

  # Data de cria��o do boleto no gateway
  attr_accessor :CreateDate

  # Identificador do boleto
  attr_accessor :NossoNumero

  def initialize
    @BoletoTransactionStatus = self.BoletoTransactionStatusEnum
  end

end