define php52::php_package {
    file {"/tmp/${name}-5.2.17-2.x86_64.rpm":
        source => "puppet:///modules/php52/${name}-5.2.17-2.x86_64.rpm"
    }

    package { $name:
        provider => 'rpm',
        install_options => ['-ivh'],
        ensure => present,
        source => "/tmp/${name}-5.2.17-2.x86_64.rpm",
        require => File["/tmp/${name}-5.2.17-2.x86_64.rpm"],
    }

}
