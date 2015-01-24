require 'raven'

plugin = Rpush.plugin(:sentry)
plugin.url = 'https://github.com/rpush/rpush-plugin-sentry'
plugin.description = 'Report errors to Sentry.'

plugin.reflect do |on|
  on.error do |error|
    Raven.capture_exception(error)
  end
end
