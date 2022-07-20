FROM node:12-alpine3.15
LABEL "com.github.actions.name"="springbootproject"
LABEL "com.github.actions.description"="Automatically bump semantic version tags"
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/sarjutambe/springbootproject"
LABEL "homepage"="https://github.com/sarjutambe/springbootproject"
LABEL "maintainer"="Sarju Tambe"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
