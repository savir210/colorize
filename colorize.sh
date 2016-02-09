#!/bin/bash

cat - | sed 's/^#[a-z]*s[^a-z]//' | gawk -vOFS='\t' -vT_LEN="$T_LEN" 'BEGIN {FS="\t" }; {for(i=1;i<=NF;i++) {  printf("\x1b[%sm%s\t\x1b[0m",(i%7)+31,$i) } ;print ""}'
