
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;


 int zfs_btree_verify_counts (int *) ;
 int zfs_btree_verify_height (int *) ;
 int zfs_btree_verify_intensity ;
 int zfs_btree_verify_order (int *) ;
 int zfs_btree_verify_pointers (int *) ;
 int zfs_btree_verify_poison (int *) ;

void
zfs_btree_verify(zfs_btree_t *tree)
{
 if (zfs_btree_verify_intensity == 0)
  return;
 zfs_btree_verify_height(tree);
 if (zfs_btree_verify_intensity == 1)
  return;
 zfs_btree_verify_pointers(tree);
 if (zfs_btree_verify_intensity == 2)
  return;
 zfs_btree_verify_counts(tree);
 if (zfs_btree_verify_intensity == 3)
  return;
 zfs_btree_verify_order(tree);

 if (zfs_btree_verify_intensity == 4)
  return;
 zfs_btree_verify_poison(tree);
}
