#!/usr/bin/env bash

cd "${AOSP_BUILD_DIR}"

# apply microg sigspoof patch
echo "applying microg sigspoof patch"
patch -p1 --no-backup-if-mismatch < "platform/prebuilts/microg/00002-microg-sigspoof.patch"

# apply community patches
echo "applying community patches"
community_patches_dir="${ROOT_DIR}/community_patches"
rm -rf "${community_patches_dir}"
git clone https://github.com/rattlesnakeos/community_patches "${community_patches_dir}"
echo "Applying community patch 00001-global-internet-permission-toggle.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00001-global-internet-permission-toggle.patch"
echo "Applying community patch 00003-enable-volte-wifi-calling.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00003-enable-volte-wifi-calling.patch"
echo "Applying community patch 00004-use-cloudflare-dns.patch"
patch -p1 --no-backup-if-mismatch < "${community_patches_dir}/00004-use-cloudflare-dns.patch"
