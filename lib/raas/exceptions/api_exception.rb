# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class APIException < StandardError
    attr_reader :context, :response_code

    # The constructor.
    # @param [String] The reason for raising an exception
    # @param [HttpContext] The HttpContext of the API call.
    def initialize(reason, context)
      super(reason)
      @context = context
      @response_code = context.response.status_code
    end
  end
end
