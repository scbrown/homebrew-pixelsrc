# typed: false
# frozen_string_literal: true

# Homebrew formula for pxl - Pixelsrc CLI
# Install: brew install scbrown/pixelsrc/pxl
class Pxl < Formula
  desc "GenAI-native pixel art format and compiler"
  homepage "https://github.com/scbrown/pixelsrc"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/scbrown/pixelsrc/releases/download/v0.3.0/pxl-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "bfea100c62ec7ed6910cf118147af30ad1fda50e4f736229e3639ce73719ac90"
    end
    on_intel do
      url "https://github.com/scbrown/pixelsrc/releases/download/v0.3.0/pxl-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ebcb5089b1d5fbdc90ba045189e7898c58b3dc768bf711f5a68710979cc5972"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scbrown/pixelsrc/releases/download/v0.3.0/pxl-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfd27466b761399d714c7e1354af221fe403099bb0493d9b96aca14cdc21f6c8"
    end
    on_intel do
      url "https://github.com/scbrown/pixelsrc/releases/download/v0.3.0/pxl-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "474bf88337421ac1ae306ac91fbd7fa9827a96a9e83ac6f5a04dd7504568c088"
    end
  end

  def install
    bin.install "pxl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pxl --version")
  end
end
