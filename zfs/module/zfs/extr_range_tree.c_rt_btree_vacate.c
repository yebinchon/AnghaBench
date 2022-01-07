
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;
typedef int range_tree_t ;


 int rt_btree_create (int *,void*) ;
 int zfs_btree_clear (int *) ;
 int zfs_btree_destroy (int *) ;

void
rt_btree_vacate(range_tree_t *rt, void *arg)
{
 zfs_btree_t *size_tree = arg;
 zfs_btree_clear(size_tree);
 zfs_btree_destroy(size_tree);

 rt_btree_create(rt, arg);
}
