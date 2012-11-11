###
# Blog settings
###

# Time.zone = "UTC"

activate :blog do |blog|
  blog.prefix = "blog"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
end

page "/feed.xml", :layout => false


set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
end

# Activate sync extension
activate :sync do |sync|
  sync.fog_provider = 'AWS'
  sync.fog_directory = 'acrhodes.com'
  sync.fog_region = 'us-east-1'
  sync.aws_access_key_id = 'AKIAJWFFKHQGRJLMR5GQ'
  sync.aws_secret_access_key = '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'
  sync.existing_remote_files = 'keep'
end
