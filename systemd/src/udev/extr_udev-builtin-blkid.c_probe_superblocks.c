
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int blkid_probe ;


 int BLKID_PARTS_ENTRY_DETAILS ;
 int S_ISCHR (int ) ;
 int blkid_do_fullprobe (int ) ;
 int blkid_do_safeprobe (int ) ;
 int blkid_probe_enable_partitions (int ,int) ;
 int blkid_probe_enable_superblocks (int ,int) ;
 int blkid_probe_get_fd (int ) ;
 int blkid_probe_get_size (int ) ;
 scalar_t__ blkid_probe_is_wholedisk (int ) ;
 scalar_t__ blkid_probe_lookup_value (int ,char*,int *,int *) ;
 int blkid_probe_set_partitions_flags (int ,int ) ;
 int errno ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static int probe_superblocks(blkid_probe pr) {
        struct stat st;
        int rc;



        if (fstat(blkid_probe_get_fd(pr), &st))
                return -errno;

        blkid_probe_enable_partitions(pr, 1);

        if (!S_ISCHR(st.st_mode) &&
            blkid_probe_get_size(pr) <= 1024 * 1440 &&
            blkid_probe_is_wholedisk(pr)) {




                blkid_probe_enable_superblocks(pr, 0);

                rc = blkid_do_fullprobe(pr);
                if (rc < 0)
                        return rc;

                if (blkid_probe_lookup_value(pr, "PTTYPE", ((void*)0), ((void*)0)) == 0)
                        return 0;
        }

        blkid_probe_set_partitions_flags(pr, BLKID_PARTS_ENTRY_DETAILS);
        blkid_probe_enable_superblocks(pr, 1);

        return blkid_do_safeprobe(pr);
}
