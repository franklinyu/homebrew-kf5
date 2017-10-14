require "formula"

class Kf5Kcmutils < Formula
  url "http://download.kde.org/stable/frameworks/5.39/kcmutils-5.39.0.tar.xz"
  sha256 "80375a266286ec20b2c035ad3a79fe7aa4fe0974156413e8d7a9c881a482e4b3"
  homepage "http://www.kde.org/"

  head "git://anongit.kde.org/kcmutils.git"

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "qt"
  depends_on "haraldf/kf5/kf5-kxmlgui"
  depends_on "haraldf/kf5/kf5-kdeclarative"

  def install
    args = std_cmake_args

    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
