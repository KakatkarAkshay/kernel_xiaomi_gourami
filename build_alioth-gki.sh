# SPDX-License-Identifier: GPL-2.0
BUILD_SCRIPT="build/build.sh"
if [[ "${BUILD_ABI:-0}" -eq 1 ]]; then
	BUILD_SCRIPT="build/build_abi.sh --update"
fi

BUILD_CONFIG=private/msm-google/build.config.alioth.vintf ${BUILD_SCRIPT} "$@"
