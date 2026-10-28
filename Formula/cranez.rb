class Cranez < Formula
  desc "Arc browser features for Zen on macOS"
  homepage "https://github.com/ivanmorales/cranez"
  url "https://github.com/ivanmorales/cranez/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a402c42720bb58668e2542f5b2a4fcfbd9fb16a1394963cd73c92ab0236d1ae4"

  depends_on :macos

  def install
    bin.install "bin/cranez"
  end

  def caveats
    <<~EOS
      Run `cranez setup` to install Zen (if needed) and set it up.
      Run it again any time to pick up the latest cranez scripts.
    EOS
  end

  test do
    assert_match "cranez #{version}", shell_output("#{bin}/cranez --version")
  end
end
