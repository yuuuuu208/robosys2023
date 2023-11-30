#!/bin/bash
# SPDX-FileCopyrighiText: 2022 Yuna Hayashi s22c1105lv@s.chibakoudai.jp
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

out=$(seq 5 | ./plus)

[ "$out" = 15 ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
