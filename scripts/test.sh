#!/usr/bin/env bash

coverage run -m pytest $@
if [ $? -ne 0 ]; then
    echo "Test failed"
    exit 1
fi

coverage report
