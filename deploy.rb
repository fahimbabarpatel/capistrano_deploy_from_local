# config valid only for current version of Capistrano
lock '3.4.0'

set :use_sudo, true    
set :scm, :gitcopy
set :deploy_to, "/absolute_path_of_server_where_you_want_to_deploy"
set :repo_url, 'file:///your_local_project_absolute_path/.git'
set :ssh_options, { :forward_agent => true }

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_files, ["config/secret.js"]
# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

# namespace :deploy do

#   after :restart, :clear_cache do
#     on roles(:web), in: :groups, limit: 3, wait: 10 do
#       # Here we can do anything such as:
#       # within release_path do
#       #   execute :rake, 'cache:clear'
#       # end
#     end
#   end

# end
# set :log_level, :debug

# namespace :deploy do

#   desc 'Restart application'
#   task :restart do
#   	puts '--------------------------'
#     on roles(:web) , in: :sequence, wait: 5 do
#       # execute "forever start #{release_path.join('server.js')}"
#       # system "cd #{release_path} && forever start server.js"
#       within "#{release_path}" do
#         # execute :touch, 'somefile'
#         execute "npm start"
#       end  
#     # end
#     end
#     puts '--------------------------'
#   end

#   after :publishing, :restart   
# end
# set :default_env, { path: "/home/ubuntu/.nvm/versions/v0.12.5/bin:$PATH" }

namespace :deploy do

  desc 'Restart application'
  task :restart do
  	on roles(:web) do
      puts "-------------------------------"
      # system "cap ROLES=web invoke COMMAND='free'"
      # execute 'forever stopall'
      puts "-------------------------------"
    end  
  end

  after :publishing, :restart   
end