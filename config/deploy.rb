set :application, "vivien.barous.se"
set :repo_url, "git://github.com/VivienBarousse/vivien.barous.se.git"

set :deploy_to, "/var/lib/aperigeek/http/vivien.barous.se"
set :scm, :git

set :keep_releases, 5

namespace :deploy do

  task :restart do
    # No-op, served by Apache directly
  end

  after :finishing, 'deploy:cleanup'

end
