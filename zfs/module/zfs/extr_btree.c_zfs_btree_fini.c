
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int zfs_btree_leaf_cache ;

void
zfs_btree_fini(void)
{
 kmem_cache_destroy(zfs_btree_leaf_cache);
}
