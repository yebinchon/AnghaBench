
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ type; int path; } ;
typedef TYPE_1__ Image ;


 int EOPNOTSUPP ;
 int EROFS ;
 scalar_t__ IMAGE_IS_HOST (TYPE_1__*) ;
 scalar_t__ IMAGE_IS_VENDOR (TYPE_1__*) ;
 scalar_t__ IMAGE_SUBVOLUME ;
 int assert (TYPE_1__*) ;
 int btrfs_qgroup_set_limit (int ,int ,int ) ;
 int btrfs_subvol_auto_qgroup (int ,int ,int) ;
 int btrfs_subvol_set_subtree_quota_limit (int ,int ,int ) ;

int image_set_limit(Image *i, uint64_t referenced_max) {
        assert(i);

        if (IMAGE_IS_VENDOR(i) || IMAGE_IS_HOST(i))
                return -EROFS;

        if (i->type != IMAGE_SUBVOLUME)
                return -EOPNOTSUPP;






        (void) btrfs_qgroup_set_limit(i->path, 0, referenced_max);
        (void) btrfs_subvol_auto_qgroup(i->path, 0, 1);
        return btrfs_subvol_set_subtree_quota_limit(i->path, 0, referenced_max);
}
