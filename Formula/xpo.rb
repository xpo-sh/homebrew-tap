class Xpo < Formula
  desc "Expose local services via secure tunnels"
  homepage "https://xpo.sh"
  version "0.0.1"
  license "MIT"

  # Real binary olduqda yenilənəcək
  on_macos do
    on_arm do
      url "https://github.com/xpo-sh/xpo/releases/download/v0.0.1/xpo-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/xpo-sh/xpo/releases/download/v0.0.1/xpo-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end
  on_linux do
    url "https://github.com/xpo-sh/xpo/releases/download/v0.0.1/xpo-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "xpo"
  end

  test do
    system "#{bin}/xpo", "--version"
  end
end
