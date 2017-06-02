# sbt

[![Build Status](https://travis-ci.org/paulcichonski/sbt.svg?branch=master)](https://travis-ci.org/paulcichonski/sbt)

A basic sbt docker image.

Image contains:

* scala 2.11.8 and 2.12.2
* sbt 0.13.15

## How to Build

This repo uses [elsy](https://github.com/cisco/elsy).

To build:

```
lc package
lc blackbox-test
```
