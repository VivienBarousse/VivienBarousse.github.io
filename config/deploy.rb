set :application, "vivien.barous.se"
set :repository,  "git://github.com/VivienBarousse/vivien.barous.se.git"
set :deploy_to, "/var/lib/aperigeek/http/vivien.barous.se"

set :scm, :git
set :branch, "master"

set :deploy_via, :remote_cache

set :user, "aperigeek"

role :web,      "goppa.aperigeek.com",
                "levin.aperigeek.com"

after "deploy:restart", "deploy:cleanup"
