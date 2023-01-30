#!/bin/bash 

set -e

INPUT="/workspace/git-sim_media/videos/1080p60/GitSim.mp4"
OUTPUT="/workspace/output.gif"

SCALE="720:-1"

# 削除しておかないと CodeSandbox の IDE 側のファイルが更新されない.
test -f "${OUTPUT}" && rm "${OUTPUT}"
ffmpeg -i "${INPUT}" -y -filter_complex "[0:v] fps=12,scale=${SCALE},split [a][b];[a] palettegen [p];[b][p] paletteuse=dither=none" "${OUTPUT}"


