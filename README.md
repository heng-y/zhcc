# ZHCC: Chinese C Compilation
ZHCC is a C library used to change the keywords into Chinese, making it easy for Chinese people to learn C.

This is achieved with a series of defines and typedefs in chinese.h.

Since chinese.h includes chinese (utf8) characters, the shell script utfencode uses a perl script provided by gnu.org to encode the Chinese characters into the UTF-8 escapes (<code>\uxxxxxx</code>) and outputs a file chinese-encoded.h.

For compilation of the actual Chinese C compilation units, the shell script zhcc does the following steps to compile:

<ol>
  <li>Input the compilation unit into the perl script by gnu.org to get the UTF8 escapes</li>
  <li>Input the new escaped file into gcc with the <code>gcc -include chinese-encoded.h</code></li>
</ol>

To install just type <code>make</code>.
