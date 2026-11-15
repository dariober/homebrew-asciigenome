class Asciigenome < Formula
  desc "Text Only Genome Viewer!"
  homepage "https://github.com/dariober/ASCIIGenome"
  url "https://github.com/dariober/ASCIIGenome/releases/download/v1.21.1/ASCIIGenome-1.21.1.zip"
  sha256 "aab15d249b1bb4f46a8faf8c29f14534b4b437e2ba2729e5c3767aa219bec8cd" 

  depends_on "openjdk@21"

  def install
    jar = "ASCIIGenome.jar"
    java = share/"java"
    java.install jar
    bin.write_jar_script java/jar, "ASCIIGenome"
  end

  test do
    system "ASCIIGenome", "--version"
  end
end
