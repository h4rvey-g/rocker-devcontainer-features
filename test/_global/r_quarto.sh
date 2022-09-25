#!/usr/bin/env bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
check "check for R" R -q -e "sessionInfo()"
check "check for quarto" quarto check all

# Report result
reportResults