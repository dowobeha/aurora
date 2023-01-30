#!/bin/bash

# aurora on bash
#
# by Dr. Lane Schwartz
#    Department of Computer Science
#    University of Alaska Fairbanks
#
# (c) 2023
#
# MIT License (see bottom of file)


# This script was adapted from the following original ASCII art
#
#
#  ` : | | | |:  ||  :     `  :  |  |+|: | : : :|   .        `              .
#      ` : | :|  ||  |:  :    `  |  | :| : | : |:   |  .                    :
#         .' ':  ||  |:  |  '       ` || | : | |: : |   .  `           .   :.
#                `'  ||  |  ' |   *    ` : | | :| |*|  :   :               :|
#        *    *       `  |  : :  |  .      ` ' :| | :| . : :         *   :.||
#             .`            | |  |  : .:|       ` | || | : |: |          | ||
#      '          .         + `  |  :  .: .         '| | : :| :    .   |:| ||
#         .                 .    ` *|  || :       `    | | :| | :      |:| |
# .                .          .        || |.: *          | || : :     :|||
#        .            .   . *    .   .  ` |||.  +        + '| |||  .  ||`
#     .             *              .     +:`|!             . ||||  :.||`
# +                      .                ..!|*          . | :`||+ |||`
#     .                         +      : |||`        .| :| | | |.| ||`     .
#       *     +   '               +  :|| |`     :.+. || || | |:`|| `
#                            .      .||` .    ..|| | |: '` `| | |`  +
#  .       +++                      ||        !|!: `       :| |
#              +         .      .    | .      `|||.:      .||    .      .    `
#          '                           `|.   .  `:|||   + ||'     `
#  __    +      *                         `'       `'|.    `:
#"'  `---"""----....____,..^---`^``----.,.___          `.    `.  .    ____,.,-
#    ___,--'""`---"'   ^  ^ ^        ^       """'---,..___ __,..---""'
#--"'                           ^                         ``--..,__
#
# Winter night's northern lights
# D. Rice
# - Friday, October 11, 1996 at 04:01:33 (EDT)

A="|"      # vertical bar
B="\x60"   # backtick
C=":"      # colon
D="+"      # plus
E="*"      # star
F="."      # dot
G="'"      # single quote
H="\""     # double quote
I="-"      # dash
J="_"      # underscore
K="^"      # caret
L=","      # comma
M="!"      # exclamation point
N=" "      # space


                # The code \033[_;1m changes the terminal foreground color
O="\033[92;1m"  # 92 means green
P="\033[0;1m"   #  0 means reset


clear
echo -e \
"$O$N$O$N$O$N$O$N$O$B$O$N$O$C$O$N$O$A$O$N$O$A$O$N$O$A$O$N$O$A$O$C$O$N$O$N$O$A$O$A$O$N$O$N$O$C$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$N$O$C$O$N$O$N$O$A$O$N$O$N$O$A$O$D$O$A$O$C$O$N$O$A$O$N$O$C$O$N$O$C$O$N$O$C$O$A$O$N$O$N$O$N$O$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$C$O$N$O$A$O$N$O$C$O$A$O$N$O$N$O$A$O$A$O$N$O$N$O$A$O$C$O$N$O$N$O$C$O$N$O$N$O$N$O$N$O$B$O$N$O$N$O$A$O$N$O$N$O$A$O$N$O$C$O$A$O$N$O$C$O$N$O$A$O$N$O$C$O$N$O$A$O$C$O$N$O$N$O$N$O$A$O$N$O$N$O$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$C$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$O$O$N$O$O$O$C$O$N$O$N$O$A$O$A$O$N$O$N$O$A$O$C$O$N$O$N$O$A$O$N$O$N$O$O$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$A$O$A$O$N$O$A$O$N$O$C$O$N$O$A$O$N$O$A$O$C$O$N$O$C$O$N$O$A$O$N$O$N$O$N$O$F$O$N$O$N$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$N$O$N$O$N$O$C$O$F$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$O$O$N$O$N$O$A$O$A$O$N$O$N$O$A$O$N$O$N$O$O$O$N$O$A$O$N$O$N$O$N$P$E$O$N$O$N$O$N$O$N$O$B$O$N$O$C$O$N$O$A$O$N$O$A$O$N$O$C$O$A$O$N$O$A$P$E$O$A$O$N$O$N$O$C$O$N$O$N$O$N$O$C$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$C$O$A$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$E$O$N$O$N$O$N$O$N$P$E$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$N$O$A$O$N$O$N$O$C$O$N$O$C$O$N$O$N$O$A$O$N$O$N$O$F$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$O$O$N$O$C$O$A$O$N$O$A$O$N$O$C$O$A$O$N$O$F$O$N$O$C$O$N$O$C$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$E$O$N$O$N$O$N$O$C$O$F$O$A$O$A$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$A$O$N$O$A$O$N$O$N$O$A$O$N$O$N$O$C$O$N$O$F$O$C$O$A$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$A$O$N$O$A$O$A$O$N$O$A$O$N$O$C$O$N$O$A$O$C$O$N$O$A$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$A$O$N$O$A$O$A$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$O$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$D$O$N$O$B$O$N$O$N$O$A$O$N$O$N$O$C$O$N$O$N$O$F$O$C$O$N$O$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$O$O$A$O$N$O$A$O$N$O$C$O$N$O$C$O$A$O$N$O$C$O$N$O$N$O$N$O$N$O$F$O$N$O$N$O$N$O$A$O$C$O$A$O$N$O$A$O$A$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$B$O$N$P$E$O$A$O$N$O$N$O$A$O$A$O$N$O$C$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$N$O$N$O$N$O$A$O$N$O$A$O$N$O$C$O$A$O$N$O$A$O$N$O$C$O$N$O$N$O$N$O$N$O$N$O$N$O$A$O$C$O$A$O$N$O$A$O$N$O$N
$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$A$O$A$O$N$O$A$O$F$O$C$O$N$P$E$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$A$O$N$O$A$O$A$O$N$O$C$O$N$O$C$O$N$O$N$O$N$O$N$O$N$O$C$O$A$O$A$O$A$O$N$O$N$O$N$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$P$F$O$N$P$E$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$P$F$O$N$O$N$O$B$O$N$O$A$O$A$O$A$O$F$O$N$O$N$O$D$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$D$O$N$O$O$O$A$O$N$O$A$O$A$O$A$O$N$O$N$O$F$O$N$O$N$O$A$O$A$O$B$O$N$O$N$O$N$O$N$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$E$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$D$O$C$O$B$O$A$O$M$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$N$O$A$O$A$O$A$O$A$O$N$O$N$O$C$O$F$O$A$O$A$O$B$O$N$O$N$O$N$O$N$O$N$O$N
$O$N$O$N$O$N$O$D$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$F$O$M$O$A$P$E$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$N$O$A$O$N$O$C$O$B$O$A$O$A$O$D$O$N$O$A$O$A$O$A$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$D$O$N$O$N$O$N$O$N$O$N$O$N$O$C$O$N$O$A$O$A$O$A$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$A$O$N$O$C$O$A$O$N$O$A$O$N$O$A$O$N$O$A$O$F$O$A$O$N$O$A$O$A$O$B$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$E$O$N$O$N$O$N$O$N$O$N$O$D$O$N$O$N$O$N$O$O$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$D$O$N$O$N$O$C$O$A$O$A$O$N$O$A$O$B$O$N$O$N$O$N$O$N$O$N$O$C$O$F$O$D$O$F$O$N$O$A$O$A$O$N$O$A$O$A$O$N$O$A$O$N$O$A$O$C$O$B$O$A$O$A$O$N$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$A$O$A$O$B$O$N$O$F$O$N$O$N$O$N$O$N$O$F$O$F$O$A$O$A$O$N$O$A$O$N$O$A$O$C$O$N$O$O$O$B$O$N$O$B$O$A$O$N$O$A$O$N$O$A$O$B$O$N$O$N$O$D$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N
$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$D$O$D$O$D$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$A$O$A$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$M$O$A$O$M$O$C$O$N$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$C$O$A$O$N$O$A$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$D$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$P$F$O$N$O$N$O$N$O$N$O$A$O$N$P$F$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$A$O$A$O$A$O$F$O$C$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$A$O$A$O$N$O$N$O$N$O$N$O$F$O$N$O$N$O$N$O$N$O$N$O$N$O$F$O$N$O$N$O$N$O$N$O$B
$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$O$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$A$P$F$O$N$O$N$O$N$P$F$O$N$O$N$O$B$O$C$O$A$O$A$O$A$O$N$O$N$O$N$O$D$O$N$O$A$O$A$O$O$O$N$O$N$O$N$O$N$O$N$O$B$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N
$P$N$P$N$P$N$P$N$P$J$P$J$O$N$O$N$O$N$O$N$O$D$O$N$O$N$O$N$O$N$O$N$O$N$P$E$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$O$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$B$O$O$O$A$O$F$O$N$O$N$O$N$O$N$O$B$O$C$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N$O$N
$P$N$P$N$P$H$P$P$P$N$P$N$P$B$P$I$P$I$P$I$P$H$P$H$P$H$P$I$P$I$P$I$P$I$P$F$P$F$P$F$P$F$P$J$P$J$P$J$P$J$P$L$P$F$P$F$P$K$P$I$P$I$P$I$P$B$P$K$P$B$P$B$P$I$P$I$P$I$P$I$P$F$P$L$P$F$P$J$P$J$P$J$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$O$B$O$F$P$N$P$N$P$N$P$N$O$B$O$F$P$N$P$N$O$F$P$N$P$N$P$N$P$N$P$J$P$J$P$J$P$J$P$L$P$F$P$L$P$I
$P$N$P$N$P$N$P$N$P$N$P$N$P$J$P$J$P$J$P$L$P$I$P$I$P$P$P$H$P$H$P$B$P$I$P$I$P$I$P$H$P$P$P$N$P$N$P$N$P$K$P$N$P$N$P$K$P$N$P$K$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$K$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$H$P$H$P$H$P$P$P$I$P$I$P$I$P$L$P$F$P$F$P$J$P$J$P$J$P$N$P$J$P$J$P$L$P$F$P$F$P$I$P$I$P$I$P$H$P$H$P$P$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N
$P$N$P$N$P$I$P$I$P$H$P$P$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$K$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$B$P$B$P$I$P$I$P$F$P$F$P$L$P$J$P$J$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N$P$N"





# MIT License
#
# Copyright (c) 2023 Lane Schwartz
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
