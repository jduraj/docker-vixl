FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  build-essential \
  clang-4.0 \
  clang-format-4.0 \
  clang-tidy-4.0 \
  git \
  scons \
  wget \
  && wget --no-verbose --output-document "/usr/bin/cpplint.py" \
    https://raw.githubusercontent.com/google/styleguide/gh-pages/cpplint/cpplint.py && \
    chmod +x "usr/bin/cpplint.py" \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
