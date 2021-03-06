# Description:
#   Provides links to WO, SO, And Opps from Mainframe
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   W0###### - Return a Work Order link
#   SO###### - Return a Sales Order link
#   OP##### - Returns an Opportunity Link
#
# Author:
#   sbausch@nerdery.com

module.exports = (robot) ->
  # Mainframe Links
  robot.hear /(^|\s+)(W0\d{6})($|\s+|\?|\.|,)/, (msg) ->
    orderNumber = msg.match[2]
    msg.send "https://mainframe.nerdery.com/search?q=#{orderNumber}"

  robot.hear /(^|\s+)(SO\d{6})($|\s+|\?|\.|,)/, (msg) ->
    orderNumber = msg.match[2]
    msg.send "https://mainframe.nerdery.com/search?q=#{orderNumber}"

  robot.hear  /(^|\s+)(OP\d{5})($|\s+|\?|\.|,)/, (msg) ->
    orderNumber = msg.match[2]
    msg.send "https://mainframe.nerdery.com/search?q=#{orderNumber}"
