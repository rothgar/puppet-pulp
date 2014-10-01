# test manifest for creating a pulp repo

# Create a puppet repo
puppet_repo { 'epel-6-x86_64':
  # Default pulp admin login/password
  ensure       => 'present',
  login        => 'admin',
  password     => 'admin',
  display_name => 'epel 6 repo',
  description  => "epel 6 mirror",
  feed         => 'http://download.fedoraproject.org/pub/epel/6/x86_64',
  schedules    => '2012-12-16T00:00Z/P1D',
  serve_http   => true,
  serve_https  => true,
}
