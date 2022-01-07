
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;
typedef int range_tree_t ;
typedef int range_seg_t ;


 int zfs_btree_add (int *,int *) ;

void
rt_btree_add(range_tree_t *rt, range_seg_t *rs, void *arg)
{
 zfs_btree_t *size_tree = arg;

 zfs_btree_add(size_tree, rs);
}
