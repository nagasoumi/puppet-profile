class profile::nginx
{
  include ::nginx 
  
  ::nginx::vhost { $facts['fqdn']: 
   port           => $vhost['port'],
  server_aliases => $vhost['server_aliases'],
}

}
