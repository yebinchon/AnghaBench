
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bt_elem_size; int bt_num_nodes; } ;
typedef TYPE_1__ zfs_btree_t ;
struct TYPE_8__ {int bth_core; } ;
typedef TYPE_2__ zfs_btree_hdr_t ;
typedef int zfs_btree_core_t ;


 int BTREE_CORE_ELEMS ;
 int kmem_cache_free (int ,TYPE_2__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int zfs_btree_leaf_cache ;

__attribute__((used)) static void
zfs_btree_node_destroy(zfs_btree_t *tree, zfs_btree_hdr_t *node)
{
 tree->bt_num_nodes--;
 if (!node->bth_core) {
  kmem_cache_free(zfs_btree_leaf_cache, node);
 } else {
  kmem_free(node, sizeof (zfs_btree_core_t) +
      BTREE_CORE_ELEMS * tree->bt_elem_size);
 }
}
