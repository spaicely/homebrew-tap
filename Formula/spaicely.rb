class Spaicely < Formula
  desc "Preview, deploy and manage sites hosted on Spaicely"
  homepage "https://spaicely.com/developers/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/spaicely/cli/releases/download/v0.2.0/spaicely-darwin-arm64.tar.gz"
      sha256 "43a44e14727af2fe6eb7a019a4d40bbcac16e30c3216394e930f2c2102139236"
    end
    on_intel do
      url "https://github.com/spaicely/cli/releases/download/v0.2.0/spaicely-darwin-x64.tar.gz"
      sha256 "26af9a86dff63923360b21b70ff47636039c738ab3f1fe3c0bdb4db3d3786aa6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spaicely/cli/releases/download/v0.2.0/spaicely-linux-arm64.tar.gz"
      sha256 "ccf77c75ddfdc4ea898c6cefc7a586d9ec275382daeac283b6f10d8260be51a7"
    end
    on_intel do
      url "https://github.com/spaicely/cli/releases/download/v0.2.0/spaicely-linux-x64.tar.gz"
      sha256 "4302a55c701f14dab9ebd689b37c1ecd08dc31ef234c8eeca349d51311c46513"
    end
  end

  def install
    bin.install "spaicely"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spaicely --version")
  end
end
