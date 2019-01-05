class profile::nginx1
{
  include ::nginx1 
  
  ::nginx1::vhost { $facts['fqdn']: 
   port           => $vhost['port'],
  server_aliases => $vhost['server_aliases'],
}

}
