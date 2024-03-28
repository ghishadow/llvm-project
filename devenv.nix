{ pkgs, ... }:

{
  env = {
  CMAKE_BUILD_TYPE= "Release";
  LLVM_ENABLE_TOOLS="clang";
  LLVM_USE_LINKER = "mold";
  LLVM_TARGETS_TO_BUILD = "x86";
};
  packages = with pkgs; [ python312 zlib-ng llvmPackages_18.clangUseLLVM git meson cmake ninja mold ];

}
