
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int btrfs_qgroup_copy_limits (int,int ,int ) ;
 int btrfs_subvol_find_subtree_qgroup (int,int ,int *) ;

__attribute__((used)) static int copy_subtree_quota_limits(int fd, uint64_t old_subvol, uint64_t new_subvol) {
        uint64_t old_subtree_qgroup, new_subtree_qgroup;
        bool changed;
        int r;


        r = btrfs_qgroup_copy_limits(fd, old_subvol, new_subvol);
        if (r < 0)
                return r;
        changed = r > 0;


        r = btrfs_subvol_find_subtree_qgroup(fd, old_subvol, &old_subtree_qgroup);
        if (r < 0)
                return r;
        if (r == 0)
                return changed;

        r = btrfs_subvol_find_subtree_qgroup(fd, new_subvol, &new_subtree_qgroup);
        if (r < 0)
                return r;
        if (r == 0)
                return changed;

        r = btrfs_qgroup_copy_limits(fd, old_subtree_qgroup, new_subtree_qgroup);
        if (r != 0)
                return r;

        return changed;
}
