
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_btree_t ;
struct TYPE_5__ {int bth_count; scalar_t__ bth_core; } ;
typedef TYPE_1__ zfs_btree_hdr_t ;
struct TYPE_6__ {TYPE_1__** btc_children; } ;
typedef TYPE_2__ zfs_btree_core_t ;


 int zfs_btree_node_destroy (int *,TYPE_1__*) ;

__attribute__((used)) static void
zfs_btree_clear_helper(zfs_btree_t *tree, zfs_btree_hdr_t *hdr)
{
 if (hdr->bth_core) {
  zfs_btree_core_t *btc = (zfs_btree_core_t *)hdr;
  for (int i = 0; i <= hdr->bth_count; i++) {
   zfs_btree_clear_helper(tree, btc->btc_children[i]);
  }
 }

 zfs_btree_node_destroy(tree, hdr);
}
