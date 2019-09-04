#!/bin/bash
/c/Users/Jack/Downloads/release-x64/otfccdump.exe font.otf -o font.otd
ideohint otd2hgl font.otd -o glyphlist.hgl --all
ideohint hint glyphlist.hgl -o decisions.hgi --parameters param.toml
ideohint instruct decisions.hgi -o instructs.hgs --parameters param.toml
ideohint apply instructs.hgs font.otd -o out.otd --parameters param.toml
/c/Users/Jack/Downloads/release-x64/otfccbuild.exe out.otd -o font.ttf
rm glyphlist.hgl decisions.hgi instructs.hgs