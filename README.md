# sweatshop-gears-packages

These are the packages imported by [Sweatshop Gears](https://github.com/JScott/sweatshop-gears-cli), a package management system for [Robot Sweatshop](https://github.com/JScott/robot_sweatshop).

`sweatshop gears <package-name>`

## Creating a package

When creating a Gears package:

- Create a repo for the package code with...
    - an entry-point executable at the root with the same name as the package
    - a Gemfile if applicable
- Create a YAML file here with...
    - the same name as your executable entry point
    - the git repo link
    - the type (script or service)
    - an author
    - a description

## Package types

- Scripts are loaded into a Robot Sweatshop worker's path to be run during a job
- Services are daemonized and run in the background under a range of ports
