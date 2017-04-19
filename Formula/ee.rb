class Ee < Formula
  desc "Terminal (curses-based) text editor with pop-up menus"
  homepage "https://github.com/ClearPathDigital/homebrew-ee"
  url "https://github.com/ClearPathDigital/homebrew-ee/raw/master/Source/ee-1.4.6.sierra.bottle.tar.gz"
  sha256 "6ee6cda46ce7949176149637326332eedcf53e03d5e7fcd58759e5b173ef8fe4"

  def install

    # Install manually
    bin.install "1.4.6/bin/ee"
    man1.install "1.4.6/share/man/man1/ee.1"
  end

  test do
    ENV["TERM"] = "xterm"
    # escape + a + b is the exit sequence for `ee`
    pipe_output("#{bin}/ee", "\\033[ab", 0)
  end
end
