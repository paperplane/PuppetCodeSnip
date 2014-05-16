## install multi package
package {'cron': ensure => installed}
package {'lsof': ensure => installed}
package {'sudo': ensure => installed}


package {['cron', 'lsof', 'sudo']:
    ensure => installed,
}


## mkdir directory tree

file {['/tmp/', '/tmp/dir1/', '/tmp/dir1/dir2']:
    ensure => 'directory',
    owner  => 'test',
    group  => 'test',
    mode   => 750,
}
