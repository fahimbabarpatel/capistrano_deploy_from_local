set :branch, "stage"

server 'SERVER_IP',
  user: 'ubuntu',
  roles: %w{web},
  ssh_options: {
    user: 'ubuntu', # overrides user setting above
    keys: ["~/.ssh/SERVER.pem"]
  }