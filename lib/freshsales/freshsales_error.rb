module Freshsales
  class FreshsalesError < StandardError
    attr_reader :params

    def initialize(message = "", params = {})
      @params = params
      super(message)
    end

    def to_s
      super + " " + params.to_s
    end
  end
end
