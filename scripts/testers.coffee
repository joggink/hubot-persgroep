# Description:
#   Pulls GIFs from various insane tumblrs
#
# Dependencies:
#   "tumblrbot": "0.1.0"
#
# Configuration:
#   HUBOT_TUMBLR_API_KEY - A Tumblr OAuth Consumer Key will work fine
#
# Commands:
#   tester - I hate that word
#
# Author:
#   @joggink

tumblr = require "tumblrbot"

getGif = (blog, msg) ->
  tumblr.photos(blog).random (post) ->
    msg.send post.photos[0].original_size.url

module.exports = (robot) ->
  robot.hear /tester/i, (msg) ->
    getGif 'devopsreactions.tumblr.com', msg
