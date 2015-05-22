# Requires nodejs, stdlib, apt and wget modules.
 
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
 
exec { 'apt-get update':
  command => 'apt-get update',
  timeout => 60,
  tries   => 3,
}
 
class { 'apt':
  update => {
    frequency => 'always',
  },
}
 
$sysPackages = [ 'build-essential', 'git']
package { $sysPackages:
  ensure => "installed",
  require => Exec['apt-get update'],
}
 
class { 'nodejs':
  version => 'stable',
}