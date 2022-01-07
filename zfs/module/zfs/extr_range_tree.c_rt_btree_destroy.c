
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;
typedef int range_tree_t ;


 int ASSERT0 (int ) ;
 int zfs_btree_destroy (int *) ;
 int zfs_btree_numnodes (int *) ;

void
rt_btree_destroy(range_tree_t *rt, void *arg)
{
 zfs_btree_t *size_tree = arg;
 ASSERT0(zfs_btree_numnodes(size_tree));

 zfs_btree_destroy(size_tree);
}
