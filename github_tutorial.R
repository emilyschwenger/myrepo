## Renv commands to ensure reproducibility of code
# renv::init() # initialize r environment and automatically install packages declared in the previously stored lockfile
# renv::snapshot() # saves exact versions of libraries to ensure reproducibility
# renv::history() # view past versions of renv.lock
# renv::revert() # to pull out an old version of renv based on a previous commit then use...
# renv::restore() # to restore library from that state

## R usethis package allows for setup of Git user name and email from within R
library(usethis)
library(gitcreds)
library(credentials)

## Configure GitHub accounts
use_git_config(user.name = "emilyschwenger", user.email = "emilyschwenger@gmail.com")
# usethis::create_github_token() # create new personal access token (PAT) if you don't have one or have forgotten your current one

## Alternatively can configure GitHub account in command line...
# git config --global user.name 'Jane Doe'
# git config --global user.email 'jane@example.com'
# git config --global --list

## You may need to specify your editor of choice...
# git config --global core.editor "emacs" # "vim"

## Set up personal access token for 2-factor authentification
gitcreds_set()
gitcreds_get()
set_github_pat()
# credentials::git_credential_forget() # clears a credential
