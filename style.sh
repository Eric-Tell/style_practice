#!/usr/bin/env bash
# Name: Your Name | CS 3030 | Module 2 (Tutorial)

usage() {
  cat <<TXT
Usage: ${0##*/} [-h] [-n NAME]
Options:
  -h        Show this help message
  -n NAME   Greet NAME (default: stranger)

Examples:
  ${0##*/} -n Mackenzie
  ${0##*/} -h
TXT
}

name="stranger"

if [[ "${1:-}" == "-h" ]]; then
  usage
  exit 0
fi

echo "Hello, $name!"
