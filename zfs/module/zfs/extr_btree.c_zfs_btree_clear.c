
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bt_height; int * bt_bulk; scalar_t__ bt_num_nodes; int * bt_root; scalar_t__ bt_num_elems; } ;
typedef TYPE_1__ zfs_btree_t ;


 int ASSERT0 (scalar_t__) ;
 int zfs_btree_clear_helper (TYPE_1__*,int *) ;

void
zfs_btree_clear(zfs_btree_t *tree)
{
 if (tree->bt_root == ((void*)0)) {
  ASSERT0(tree->bt_num_elems);
  return;
 }

 zfs_btree_clear_helper(tree, tree->bt_root);
 tree->bt_num_elems = 0;
 tree->bt_root = ((void*)0);
 tree->bt_num_nodes = 0;
 tree->bt_height = -1;
 tree->bt_bulk = ((void*)0);
}
