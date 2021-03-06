Scenario Generation for a 2D Videogame using Logic Programming
===========

[![Powered by Lua](https://img.shields.io/badge/lua-5.3-blue.svg)](https://www.lua.org/) [![Made by Löve](https://img.shields.io/badge/love2d-11.0-e64998.svg)](https://love2d.org/) [![Clingo Solver](https://img.shields.io/badge/clingo-5.2.2-green.svg)](https://potassco.org/clingo/) [![ASP-Core 2 language](https://img.shields.io/badge/ASP--Core--2-2.01c-blue.svg)](https://www.mat.unical.it/aspcomp2013/ASPStandardization) [![Build Status](https://travis-ci.org/NEKERAFA/TFG-UDC.svg?branch=master)](https://travis-ci.org/NEKERAFA/TFG-UDC) [![Coverage Status](https://coveralls.io/repos/github/NEKERAFA/TFG-UDC/badge.svg?branch=master)](https://coveralls.io/github/NEKERAFA/TFG-UDC?branch=master) [![license](https://img.shields.io/github/license/mashape/apistatus.svg)](LICENSE)

The goal of this project is building a declarative tool for the creation and manipulation of scenarios and maps in the videogame *FreeCiv*, a turn-based strategy game between multiple players that it is played on a two-dimensional grid map.

The ultimate purpose is to achive, as far as posible, that the generation of scenarios is guided by a set of rules, expressed as constraints in logic programming, in such a way that the user can vary sustantially the configuration of the scenarios obtained in according to the representation of the problem in terms of a logical program. Given its suitability for problem solving, the logical programming paradigm to be used is Answer Set Programming.

Installation
============

First of all, install these dependencies on your machine:
- Clingo 5.2.5
- Lua 5.3
- Love2D 11.0

If you have a Ubuntu distribution installed on your machine, execute this in a terminal in order to install all dependencies:
```bash
sudo add-apt-repository ppa:bartbes/love-stable
sudo apt-get update && sudo apt-get install gringo clasp lua5.3 love
```

Afterwards, just clone the repository wherever you want it. Then just execute this in a terminal:

```bash
make run
```

Specs
=====

This project uses [busted](http://olivinelabs.com/busted/) for its tests. If you want to run all the tests, you will have to install busted first. Then just execute the following:

```bash
make test
```
