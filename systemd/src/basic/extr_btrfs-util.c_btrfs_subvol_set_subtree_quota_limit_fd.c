
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int assert (int) ;
 int btrfs_qgroup_set_limit_fd (int,int ,int ) ;
 int btrfs_subvol_find_subtree_qgroup (int,int ,int *) ;

int btrfs_subvol_set_subtree_quota_limit_fd(int fd, uint64_t subvol_id, uint64_t referenced_max) {
        uint64_t qgroupid;
        int r;

        assert(fd >= 0);

        r = btrfs_subvol_find_subtree_qgroup(fd, subvol_id, &qgroupid);
        if (r < 0)
                return r;

        return btrfs_qgroup_set_limit_fd(fd, qgroupid, referenced_max);
}
