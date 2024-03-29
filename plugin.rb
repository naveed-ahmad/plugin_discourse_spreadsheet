# name: Google Spreadsheet Onebox
# version: 0.1
# authors: Daniel Fernández

# freedom patch Google Spreadsheet Onebox
class Onebox::Engine::SpreadsheetOnebox
  include Onebox::Engine

  matches_regexp(/^https?:\/\/(?:www\.)?(?:m\.)?(?:docs\.google\.com\/(spreadsheet|spreadsheets))\/.+$/)

  def to_html
    url = @url.split('&').first
    "<iframe src='#{url}&rm=minimal' style='border: 0' width='800' height='600' frameborder='0' scrolling='no' ></iframe>"
  end
end