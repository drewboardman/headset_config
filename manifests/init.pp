class headset_config {
  package {
    ['alsa-lib', 'alsa-utils']:
      ensure => installed
  }

  file {
    '/etc/udev/rules.d/00-local.rules':
      ensure => file,
      owner  => 'root',
      group  => 'root',
      source => 'puppet:///modules/headset_setup/00-local.rules'
  }
}

