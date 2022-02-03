# <%= name %>

[![Pipeline](https://ci.eionet.europa.eu/buildStatus/icon?job=volto%2F<%= name %>%2Fmaster&subject=pipeline)](https://ci.eionet.europa.eu/view/Github/job/volto/job/<%= name %>/job/master/display/redirect)
[![Release](https://img.shields.io/github/v/release/eea/<%= name %>?sort=semver)](https://github.com/eea/<%= name %>/releases)

## Documentation

A training on how to create your own website using Volto is available as part of the Plone training at [https://training.plone.org/5/volto/index.html](https://training.plone.org/5/volto/index.html).


## Getting started

1. Install `nvm`

        touch ~/.bash_profile
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

        source ~/.bash_profile
        nvm version

1. Install latest `NodeJS 16.x`:

        nvm install 16
        nvm use 16
        node -v
        v16.16.2

1. Install `yarn`

        curl -o- -L https://yarnpkg.com/install.sh | bash
        yarn -v

1. Clone:

        git clone https://github.com/eea/<%= name %>.git
        cd <%= name %>

1. Install

        yarn build

1. Start backend

        docker-compose up -d
        docker-compose logs -f

1. Start frontend

        yarn start:prod

1. See application at http://localhost:3000

## Production

We use [Docker](https://www.docker.com/), [Rancher](https://rancher.com/) and [Jenkins](https://jenkins.io/) to deploy this application in production.

### Release

* Create a new release of this code via `git tag` command or [Draft new release](https://github.com/eea/<%= name %>/releases/new) on Github.
  * A new Docker image is built and released automatically on [DockerHub](https://hub.docker.com/r/eeacms/<%= name %>) based on this tag.

### Upgrade

* Within your Rancher environment click on the `Upgrade available` yellow button next to your stack.

* Confirm the upgrade

* Or roll-back if something went wrong and abort the upgrade procedure.
