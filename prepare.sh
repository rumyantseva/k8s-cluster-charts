#!/bin/sh

helm package charts
helm package oauth-proxy
helm package user-manager
helm package github-integration
helm package cockroachdb
mv *.tgz packages/
helm repo index packages --url https://services.grahovac.me/charts
