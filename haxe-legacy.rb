class HaxeLegacy < Formula
  desc "Multi-platform programming language"
  homepage "http://haxe.org"
  url "https://github.com/mattbenton/homebrew-haxe-legacy/archive/1.0.0.tar.gz"
  sha256 "f75b4dbb8881411b3398d731fee0a578a5d5e5aa287604793979c0ae5dec4c90"

  def install
    haxe = "haxe-2.10"
    bin.install Dir["#{haxe}/bin/*"]
    lib.install Dir["#{haxe}/lib/*"]

    neko = "neko-1.8.2"
    bin.install Dir["#{neko}/bin/*"]
    lib.install Dir["#{neko}/lib/*"]
    include.install Dir["#{neko}/include/*"]
  end

  test do
    ENV["HAXE_STD_PATH"] = "#{HOMEBREW_PREFIX}/lib/haxe/std"
    system "#{bin}/haxe", "-v", "Std"
  end

  def caveats
    <<-EOS.undent
      Run `haxelib setup` to set haxelib path.

      Add the following line to your .bashrc or equivalent:
        export HAXE_STD_PATH="#{lib}"
    EOS
  end
end
