class sudo {

    file { '/etc':
        ensure => directory,
        mode => '0755',
	owner => 'root',
	group => 'root',
    }

    file { '/etc/m1/1':
        mode => '0644',
	owner => 'root',
	group => 'root',
	source => 'puppet:///files/m1',
    }
}
node puppetclient {
    include sudo
}

