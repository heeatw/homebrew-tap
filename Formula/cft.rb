class Cft < Formula
  desc "Chrome for Testing per project: one browser, a profile and DevTools port each"
  homepage "https://github.com/heeatw/cft"
  url "https://github.com/heeatw/cft/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "821ff978ae1cf0860d5c21ccfb0ae4cee4495bd58f18c2c1abfe5e37d9edfb9d"
  license "MIT"
  head "https://github.com/heeatw/cft.git", branch: "main"

  # `cft install` downloads the browser with Google's @puppeteer/browsers via npx.
  depends_on "node"

  def install
    bin.install "bin/cft"
    doc.install "docs/AGENTS.md", "README.md", "CHANGELOG.md"
  end

  def caveats
    <<~EOS
      Download the browser once (into ~/.chrome-for-testing):
        cft install
    EOS
  end

  test do
    assert_match "cft #{version}", shell_output("#{bin}/cft --version")
    assert_match "cft install", shell_output("#{bin}/cft help")
  end
end
