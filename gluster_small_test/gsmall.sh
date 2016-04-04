for i in {1..4}
do
	mpirun --allow-run-as-root -np ${i} ior -s 100 -t 1M -b 2M /mnt/gluster/ >/root/log/gluster_small_test/gluster_${i}_1M_100.log
	sync; echo 1 > /proc/sys/vm/drop_caches
done
