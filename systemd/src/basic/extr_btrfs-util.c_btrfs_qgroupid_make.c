
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int BTRFS_QGROUP_LEVEL_SHIFT ;
 int EINVAL ;
 int UINT64_C (int) ;
 int assert (int*) ;

int btrfs_qgroupid_make(uint64_t level, uint64_t id, uint64_t *ret) {
        assert(ret);

        if (level >= (UINT64_C(1) << (64 - BTRFS_QGROUP_LEVEL_SHIFT)))
                return -EINVAL;

        if (id >= (UINT64_C(1) << BTRFS_QGROUP_LEVEL_SHIFT))
                return -EINVAL;

        *ret = (level << BTRFS_QGROUP_LEVEL_SHIFT) | id;
        return 0;
}
