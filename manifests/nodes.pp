node 'akaram' {
  file { '/tmp/hello':
    content => "Hello, world\n",
  } 
}
