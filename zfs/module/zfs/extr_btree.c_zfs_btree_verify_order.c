
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bt_height; int * bt_root; } ;
typedef TYPE_1__ zfs_btree_t ;


 int EQUIV (int,int ) ;
 int zfs_btree_verify_order_helper (TYPE_1__*,int *) ;

__attribute__((used)) static void
zfs_btree_verify_order(zfs_btree_t *tree)
{
 EQUIV(tree->bt_height == -1, tree->bt_root == ((void*)0));
 if (tree->bt_height == -1) {
  return;
 }

 zfs_btree_verify_order_helper(tree, tree->bt_root);
}
