
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;
typedef int zfs_btree_index_t ;


 void* zfs_btree_next_helper (int *,int const*,int *,int *) ;

void *
zfs_btree_next(zfs_btree_t *tree, const zfs_btree_index_t *idx,
    zfs_btree_index_t *out_idx)
{
 return (zfs_btree_next_helper(tree, idx, out_idx, ((void*)0)));
}
