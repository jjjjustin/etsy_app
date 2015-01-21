require 'open-uri'
require 'pry'
class SearchController < ApplicationController
  def index
    query = params.fetch(:query, 'wood')
    url = "https://openapi.etsy.com/v2/listings/active?api_key=03r6zz08r1j4wqqutzmfbkg3&keywords=#{query}"
    response = JSON.parse(open(url).read)
    @items = response['results']
  end
end

