
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int BTRFS_QGROUP_LEVEL_SHIFT ;
 int UINT64_C (int) ;
 int assert (int) ;

int btrfs_qgroupid_split(uint64_t qgroupid, uint64_t *level, uint64_t *id) {
        assert(level || id);

        if (level)
                *level = qgroupid >> BTRFS_QGROUP_LEVEL_SHIFT;

        if (id)
                *id = qgroupid & ((UINT64_C(1) << BTRFS_QGROUP_LEVEL_SHIFT) - 1);

        return 0;
}
