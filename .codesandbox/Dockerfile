FROM ubuntu

RUN apt-get update -y \
  && apt-get install --no-install-recommends -y build-essential python3-dev libcairo2-dev libpango1.0-dev ffmpeg \
  && apt-get install --no-install-recommends -y python3 python3-pip \
  && pip3 install manim \
  && pip3 install git-sim \
  # Setup user env
  && mkdir /root/tmp \
  # これは上書きされる(CodeSandbox 側が設定を変更するもよう)
  # && echo "alias git-sim='git-sim --media-dir /workspace/ -d'" >> /root/.zshrc \
  # Cleanup
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*
