
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bt_height; int bt_root; int bt_num_elems; } ;
typedef TYPE_1__ zfs_btree_t ;
typedef int zfs_btree_index_t ;


 int ASSERT0 (int ) ;
 void* zfs_btree_first_helper (int ,int *) ;

void *
zfs_btree_first(zfs_btree_t *tree, zfs_btree_index_t *where)
{
 if (tree->bt_height == -1) {
  ASSERT0(tree->bt_num_elems);
  return (((void*)0));
 }
 return (zfs_btree_first_helper(tree->bt_root, where));
}
