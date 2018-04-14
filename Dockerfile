FROM izone/amdgpu:17.40.2712
MAINTAINER Leonardo Loures <luvres@hotmail.com>

ENV \
	GPU="U" \
	POOL="s.comining.io" \
	PORT="9999" \
	USER="A8bW7QQtc8igRn5EEZgoBBD.1uvr3z"

COPY ethminer /usr/bin

CMD ethminer -$GPU -SP 1 -S $POOL:$PORT -O $USER --report-hashrate --farm-recheck 5000 --work-timeout 1000
