deadbeef-remote
===============

Remote control plugin for DeadBeeF

## Build
     make
     make strip # optional

## Install control plugin
     make install

## Configure DeadBeeF
     Start DB and go to the plugin configuration
     Fill in IP and Port, save and restart DB

## Usage
     ./deadbeefctl IP PORT COMMAND
     ./deadbeefctl --help

## TODO
* Write enable/disable code for socket binding?
* Add command to get current playing song
* Add Linux desktop applet/control widget
