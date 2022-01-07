
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;
typedef int zfs_btree_leaf_t ;
typedef int uint64_t ;


 int BSD_LEFT ;
 int bt_shift_leaf (int *,int *,int ,int ,int,int ) ;

__attribute__((used)) static inline void
bt_shift_leaf_left(zfs_btree_t *tree, zfs_btree_leaf_t *leaf, uint64_t idx,
    uint64_t count)
{
 bt_shift_leaf(tree, leaf, idx, count, 1, BSD_LEFT);
}
