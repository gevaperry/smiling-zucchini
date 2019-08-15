#!/usr/bin/env bash

set -e
set -o pipefail
set -v

npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/5d55df6c19062400155f36f3
cd exampleSite && hugo --gc --baseURL "/" --themesDir ../.. && cd ..
