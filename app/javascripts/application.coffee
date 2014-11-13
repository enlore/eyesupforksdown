Hello = require 'hello'

module.exports = class Application
    constructor: ->
        skrollr.init(forceHeight: false)

        $(window).on 'scroll', ->
           console.log $(window).scrollTop()
