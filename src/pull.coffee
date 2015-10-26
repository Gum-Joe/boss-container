#Pull images
YAML = require 'yamljs'
fs = require 'fs'
parse = require './parse.js'

exports.pullImages = (file) ->
  # body...
  images = parse.parse(file)
  im = 0
  while im < images.images.length
    exec('docker pull '+images.images[im])
    im++
