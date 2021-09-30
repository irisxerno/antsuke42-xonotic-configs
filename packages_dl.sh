#!/usr/bin/env bash
awk '{print "http://dl.xonotic.fps.gratis/" $0;}' packages | xargs -l1 wget
