# == Class: chrome::install
#
# This class installs Google Chrome if not already install.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class chrome::install {
  case $::kernel {
    'Darwin': {
       $source = 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
    }
    default: {
      fail("Unsupported Kernel: ${::kernel} operatingsystem: ${::operatingsystem}")
    }
  }
  package {'googlechrome.dmg':
    ensure => installed,
    source => $source,
    provider => appdmg,
  }
}