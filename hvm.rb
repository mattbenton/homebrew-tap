# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Hvm < Formula
  desc "Haxe Version Manager (HVM)"
  homepage ""
  url "https://github.com/mattbenton/hvm/archive/1.0.1.tar.gz"
  version "1.0.1"
  sha256 "101648f2a31a642ac232ddae6cc82ad0bdf6118fa1b88a8db2b4955b52252cb0"

  def install
    bin.install "hvm"
  end
end
