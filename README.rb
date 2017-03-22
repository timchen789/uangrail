REF1: https://www.angularonrails.com/angular-2-tour-heroes-tutorial-rails-backend/
REF2: http://ngcli.github.io/#getting-started-commands
Get Started with Angular 2 and Rails 5
This guide will walk you through creating just about the simplest Angular + Rails application possible.
We’re going to create an Angular app, then create a Rails app, then get the two to talk to each other. 
It should only take a few minutes. Here are the steps:

    Get set up
        Get an Angular app initialized and running
        Initialize a Rails app
    Prepare some data
        Create a resource in the Rails app
        Add some data to the Rails app
    Connect Angular with Rails
        Run the Rails server
        Enable CORS so the Angular app can talk to the Rails app
        Get Angular to talk to Rails
        Show the data from Rails inside the Angular app

Get set up
Get an Angular app initialized and running
The app we’re going to create is a pretend app called Home Library that exists for the purpose of 
organizing one’s private book collection.
We’ll be using the Angular CLI (command-line interface) to create the Angular app. 
Before we can do anything else, we need to install Angular CLI.
(If you don’t have NPM installed, you need to install that before installing Angular CLI.)
---------------- 1:installing Angular CLI ----------------------
timchen7:~/uangrail (master) $ npm install -g angcli
/home/ubuntu/.nvm/versions/node/v4.7.3/bin/ng -> /home/ubuntu/.nvm/versions/node/v4.7.3/lib/node_modules/angcli/index.js
angcli@0.0.7 /home/ubuntu/.nvm/versions/node/v4.7.3/lib/node_modules/angcli
├── ncp@1.0.1
├── lodash@2.4.2
├── findup@0.1.5 (commander@2.1.0, colors@0.6.2)
├── shelljs@0.3.0
├── mkdirp@0.5.1 (minimist@0.0.8)
├── bluebird@2.11.0
├── nomnom@1.8.1 (underscore@1.6.0, chalk@0.4.0)
├── update-notifier@0.3.2 (is-npm@1.0.0, semver-diff@2.1.0, chalk@1.1.3, string-length@1.0.1, latest-version@1.0.1, configstore@0.3.2)
├── lineup@0.0.7 (pleasant-progress@1.1.0, elapsed@0.0.3, underscore@1.8.3, colors@1.1.2, dateformat@1.0.12)
└── inquirer@0.8.5 (ansi-regex@1.1.1, through@2.3.8, figures@1.7.0, cli-width@1.1.1, readline2@0.1.1, chalk@1.1.3, lodash@3.10.1, rx@2.5.3)
---------------- 2:ng new project1-------------------
The Angular app and the Rails app will sit side-by-side in a directory uangrail
timchen7:~ (master) $ mkdir uangrail
timchen7:~ (master) $ cd uangrail
timchen7:~/uangrail (master) $ ng new  project1
? Select project blueprint: Default template
Cloning into '/home/ubuntu/uangrail/project1'...
install installing using npm
npm WARN package.json angularApp@0.0.0 No description
......
bower angular-mocks#*                           resolved https://github.com/angular/bower-angular-mocks.git#1.6.3
bower angular#1.6.3                              install angular#1.6.3
bower angular-route#*                            install angular-route#1.6.3
bower angular-deferred-bootstrap#~0.1.5          install angular-deferred-bootstrap#0.1.9
bower angular-mocks#*                            install angular-mocks#1.6.3

angular#1.6.3 bower_components/angular

angular-route#1.6.3 bower_components/angular-route
└── angular#1.6.3

angular-deferred-bootstrap#0.1.9 bower_components/angular-deferred-bootstrap
└── angular#1.6.3

angular-mocks#1.6.3 bower_components/angular-mocks
└── angular#1.6.3
[8:22:44 AM UTC] SUCCESS Created ✔
--------------------
    NEXT STEPS    
--------------------
cd /home/ubuntu/uangrail/project1
ng -h to list all command
--------------------
timchen7:~/uangrail (master) 
---------------- 3: check project1 angular framework files created in step2-------------------
timchen7:~/uangrail (master) $ ls
README.rb  project1/
timchen7:~/uangrail (master) $ cd project1
timchen7:~/uangrail/project1 (master) $ ls
app/        bower_components/  dist/      karma.conf.js  node_modules/  tests/    webpack.config.js
bower.json  core/              includes/  ngconfig.json  package.json   vendors/
timchen7:~/uangrail/project1 (master) $ ng -h

Usage: /home/ubuntu/.nvm/versions/node/v4.7.3/bin/node ng <command>

command     
  generate     Generate angular common entities example ng generate controller home
  new          Create new ngCli project
  test         Run karma unit tests
  install      Install ng hooks from npm
  build        Build source files
  addon        Scaffold ng addon
  serve        Add watcher to build source files on every change
  version      ngCli version
  
