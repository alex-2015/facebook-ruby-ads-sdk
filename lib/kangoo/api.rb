require 'kangoo/client'
require 'kangoo/object/ad_account'

module Kangoo
  class Api
    attr_reader :client, :http

    def initialize(auth_token)
      @client = Client.new(auth_token)
    end

    def ad_accounts
      @ad_accounts ||= Object::AdAccount.all(self.client)
    end

    def find_ad_account(account_id)
      Object::AdAccount.find(account_id, self.client)
    end
  end
end