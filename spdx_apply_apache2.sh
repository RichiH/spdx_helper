#!/bin/sh

# ignored: JSON, gemspec, conf, png, pgp, tpl, txt

find . -name \*.go -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;// SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +

find . -name \*.proto -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;// SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +

find . -name \*.yml -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +
find . -name \*.yaml -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +

find . -name Dockerfile -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +
find . -name Dockerfile.\* -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +

find . -name \*.libsonnet -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;// SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +

# NB: Replacing under the second line
find . -name \*.sh -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "2s;^;\n# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +

# NB: Matching on -iname
# NB: triple dash https://groups.google.com/g/pandoc-discuss/c/FnTRTIhCEi4
find . -iname \*.md -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;<--- SPDX-License-Identifier: Apache-2.0 -->\n\n;" $file; done' _ {} +

find . -name \*.rb -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +
find . -name Gemfile -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +
find . -name Rakefile -type f -exec sh -c 'for file; do grep -q "SPDX-License-Identifier:" $file || sed -i "1s;^;# SPDX-License-Identifier: Apache-2.0\n\n;" $file; done' _ {} +

# by hand:
# tools/image-tag
# tools/release
# bigtable-backup.py
