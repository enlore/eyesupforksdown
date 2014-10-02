exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  watcher:
      ignored: /\.sw[pqrs]$/

  conventions:
      ignored: /\.sw[pqrs]$/

  plugins:
    static_jade:
      extension: ".static.jade"
    stylus:
      paths: [
        './app/assets/images',
      ]

  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
            'vendor/jquery-2.1.1.min.js',
            'vendor/bootstrap.min.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: []
        after: []

    # Ensure that our jade templates don't get compiled into our app JS.
    templates:
      joinTo: 'javascripts/template.js'

  modules:
    nameCleaner: (path) ->
      path = path.replace(/^app\//, '')
      path = path.replace(/^javascripts\//, '')
