#!/bin/sh

CSCOPE_FILE="cscope.files"
CREATE=${1:-0}

if [ "$CREATE" != 0 ]
then
	echo "Generate ${PWD}/${CSCOPE_FILE}"
	find . -type f -name "*.[sSch]" > ${CSCOPE_FILE}
else
	echo "WARNING: Use the existing ${CSCOPE_FILE}."
	echo "         Pass any parameters to generate a new one."
fi

if [ ! -f "${PWD}/${CSCOPE_FILE}" ]
then
	echo "Need to run $0 1 to generate the ${CSCOPE_FILE}"
	exit 1
fi

echo "Generate cscope databases"
cscope -b -q -k

echo "Done"
