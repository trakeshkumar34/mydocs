#!/bin/bash

DATE=$(date +%m-%d-%Y) # Get Current Date
TIME=$(date +%T) # Get Current Time date +"%T"


SEARCH_DIR="$1"
LOG_FILE="${PWD}/ZERO_FILE_${DATE}_${TIME}.log"


echo -e "" 																		| tee -a ${LOG_FILE}
echo -e "##########" 															| tee -a ${LOG_FILE}
echo -e "# Searching for 0kb or empty files recursively under ${SEARCH_DIR} " 	| tee -a ${LOG_FILE}
echo -e "##########" 															| tee -a ${LOG_FILE}
echo -e "" 																		| tee -a ${LOG_FILE}

find -HL $SEARCH_DIR -type f -empty -exec du -kh {} + 2>/dev/null 				| tee -a ${LOG_FILE}