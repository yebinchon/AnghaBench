
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTREE_LEAF_SIZE ;
 int kmem_cache_create (char*,int ,int ,int *,int *,int *,int *,int *,int ) ;
 int zfs_btree_leaf_cache ;

void
zfs_btree_init(void)
{
 zfs_btree_leaf_cache = kmem_cache_create("zfs_btree_leaf_cache",
     BTREE_LEAF_SIZE, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     ((void*)0), 0);
}
