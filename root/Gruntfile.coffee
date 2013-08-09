
module.exports = (grunt) ->

  grunt.initConfig

    pkg: grunt.file.readJSON 'package.json'

    coffee:
      compile:
        options:
          bare: true
        files: [
          expand: true
          cwd: 'src'
          src: '*.coffee'
          dest: 'lib'
          ext: '.js'
        ]

    watch:
      scripts:
        files: 'src/*.coffee'
        tasks: ['coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
