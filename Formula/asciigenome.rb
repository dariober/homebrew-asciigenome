class Asciigenome < Formula
  desc "Text Only Genome Viewer!"
  homepage "https://github.com/dariober/ASCIIGenome"
  url "https://github.com/dariober/ASCIIGenome/releases/download/v1.21.1/ASCIIGenome-1.12.1.zip"
  sha256 "06e4add5078933111fff155e527743e3d20049a280c43e865cded8a07bc601d6" 

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
