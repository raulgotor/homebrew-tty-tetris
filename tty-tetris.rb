class TtyTetris < Formula
 desc "Terminal-based Tetris game"
 homepage "https://github.com/raulgotor/tty-tetris"
 url "https://github.com/raulgotor/tty-tetris/archive/v0.1.0.tar.gz"
 version "0.1.0"
 license "MIT"

  depends_on "cmake" => :build
  depends_on "ncurses"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/tty-tetris", "--version"
  end
end
