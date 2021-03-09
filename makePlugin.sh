#!/bin/bash

srcDir=plugin.video.vodtvp

addon=`grep '<addon' ${srcDir}/addon.xml`

for v in ${addon}
do
	eval $v 2>/dev/null
done
echo $id
echo $version

zipname="${id}-${version}.zip"

CMD="zip -r ${zipname} ${srcDir}"

echo ${CMD}
${CMD}
