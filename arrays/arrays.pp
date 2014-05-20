## install multi package
#package {'nginx': ensure => installed}
#package {'lsof': ensure => installed}
#package {'sudo': ensure => installed}

package {['nginx', 'lsof', 'sudo']:
    ensure => installed,
}

## mkdir directory tree
file {['/tmp/', '/tmp/dir1/', '/tmp/dir1/dir2']:
    ensure => 'directory',
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 750,
}

#access array element
$list = ['a', 'b', 'c', 'd', 'e']
notice($list[0])
notice($list[-1])

#For LOOP
define print_obj {
        notify { "Found object $name":; }
        }
print_obj { $list:; }

#string split into array
$array_in = "aa bb cc"
$array_out = split($array_in, ' ')
print_obj { $array_out:; }
print_obj { $array_in:; }

#regex split
$array_regex_in = "ab:bc,cd"
$array_regex_out = split($array_regex_in, ':|,')
print_obj { $array_regex_out:; }
print_obj { $array_regex_in:; }
