TARGET=apssrvgro080.corp.aphysci.com

while true
do
	DT=$(date -Iseconds)
	PG=`ping $TARGET -n 1 -w 1 |awk '{print}' ORS=' '`
	echo $DT $PG >> /d/temp/$TARGET.ping.log
	#sleep 1
done
echo done da done done done
sleep 100000
