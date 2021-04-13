cask "java8" do
  version "16,36:7863447f0ab643c585b9bdebf67c69db"
  sha256 "90e762e0d9257623bf31d5f9c1b9572485c99565040f21d260220754c96a20e0"

  url "https://enos.itcollege.ee/~jpoial/allalaadimised/jdk8/jdk-8u281-macosx-x64.dmgo",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit"
  homepage "https://www.oracle.com/technetwork/java/javase/overview/index.html"

  depends_on macos: ">= :yosemite"

  pkg "JDK 8 Update 281.pkg"

  uninstall pkgutil: "com.oracle.jdk8u281.pkg"

  caveats do
    license "https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html"
  end
end
