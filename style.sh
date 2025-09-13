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

error() {
  echo "Error: $1"
  usage
  exit 2
}

name="stranger"
count=1

while getopts ":hn:c:" opt; do
  case "$opt" in 
    h) usage; exit 0 ;;
    c) count="$OPTARG" ;;
    n) name="$OPTARG" ;;
    \?) error "Unknown option: -$OPTARG" ;;
    :) error "Missing argument for -$OPTARG" ;;
  esac
done

if ! [[ "$count" =~ ^[1-9][0-9]*$ ]]; then
  error "Count must be a positive number"
fi

for  ((i=0; i<=count; i++)); do
  echo "Hello, $name!"
done



