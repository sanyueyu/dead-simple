exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(bower_components|vendor)/
    stylesheets:
      defaultExtension: "scss"
      joinTo:
        'css/app.css': /^(app|vendor|bower_components)/
    templates:
      joinTo: 'app.js'
  plugins:
    uglify:
      output: 'js/app.js'
      consolidate: 'js/app.min.js'
      mangle: false
      compress:
        global_defs:
          DEBUG: false
