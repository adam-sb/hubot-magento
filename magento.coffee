missingEnvironmentForApi = (msg) ->
    missingAnything = false
    unless process.env.HUBOT_MAGE_CONSUMER_KEY?
      msg.send "SomeAPI Client ID is missing: Ensure that SOMEAPI_CLIENT_ID is set."
      missingAnything |= true
    unless process.env.HUBOT_MAGE_CONSUMER_SECRET?
      msg.send "SomeAPI Client Secret is missing: Ensure that SOMEAPI_CLIENT_SECRET is set."
      missingAnything |= true
    unless process.env.HUBOT_MAGE_ACCESS_TOKEN_KEY?
      msg.send "SomeAPI Access Token is missing: Ensure that SOMEAPI_ACCESS_TOKEN is set."
      missingAnything |= true
    unless process.env.HUBOT_MAGE_ACCESS_TOKEN_SECRET?
      msg.send "SomeAPI Access Token is missing: Ensure that SOMEAPI_ACCESS_TOKEN is set."
      missingAnything |= true      
    missingAnything

module.exports = (robot) ->
  auth =
    consumer_key: process.env.HUBOT_MAGE_CONSUMER_KEY
    consumer_secret: process.env.HUBOT_MAGE_CONSUMER_SECRET
    access_token_key: process.env.HUBOT_MAGE_ACCESS_TOKEN_KEY
    access_token_secret: process.env.HUBOT_MAGE_ACCESS_TOKEN_SECRET

module.exports = (robot) ->
    robot.respond /magento (.*)\??/i, (msg) ->
#check env credentials
#do some magic
#msg results
