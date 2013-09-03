# == Class: chrome
#
# This class installs Google Chrome for OS X.
#
# === Examples
#
#  include chrome
#
#  or
#
#  class { chrome: }
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class chrome() {
  anchor {'chrome::begin': } ->
  class {'chrome::install': } ->
  anchor {'chrome::end': }
}