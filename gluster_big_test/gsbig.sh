for i in {4..16}
do
	mpirun --allow-run-as-root -np ${i} ior -s 1 -t 1G -b 2G /mnt/gluster/ >/root/log/gluster_big_test/gluster_${i}_1G_1.log
	sync; echo 1 > /proc/sys/vm/drop_caches
done
