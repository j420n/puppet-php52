

class php52 {
    package { ['gd', 't1lib']:
        ensure => present
    } ->
    php_package{ 'php-common': } ->
    php_package{ 'php-cli': } ->
    php_package{ 'php': } ~>
    Service['httpd']
}


