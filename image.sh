#!/bin/bash
set -e
convert $1 jpg:- | jp2a ${*:2} -