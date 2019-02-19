#!/bin/bash
set -euo pipefail

export MAILGUN_API_TOKEN="$(tq mailgun.token < /data/secrets.toml)"
exec run-on-change https://team-api.infra.rust-lang.org/v1/lists.json sync-mailgun
