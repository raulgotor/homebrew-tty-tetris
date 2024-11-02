class TtyTetris < Formula
  desc "Shell / CLI / TTY / Terminal based Tetris"
  homepage "https://github.com/raulgotor/tty-tetris"
  url "https://github.com/raulgotor/tty-tetris.git", branch: "trunk"
  license "MIT"
  head "https://github.com/raulgotor/tty-tetris.git"

  depends_on "cmake" => :build
  depends_on "ncurses"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "false"
  end
end
