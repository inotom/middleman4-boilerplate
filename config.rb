set :relative_links, true

###
# Erubis options
###
set :erb, { :trim => true }

###
# node-sass
###

activate :external_pipeline,
  name: :nodesass,
  command: build? ? "npm run build:sass:tmp" : "npm run watch",
  source: "./.tmp",
  latency: 1

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
#helpers do
#end

###
# LiveReload
###
activate :livereload

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
set :fonts_dir, 'assets/fonts'

I18n.enforce_available_locales = false

# Build-specific configuration
configure :build do
  ignore '**/.keep'

  # Minify HTML on build (require middleman-minify-html)
  # activate :minify_html

  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  activate :relative_assets
  set :relative_links, true

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
