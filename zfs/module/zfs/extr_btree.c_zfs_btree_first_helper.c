
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* btl_elems; } ;
typedef TYPE_1__ zfs_btree_leaf_t ;
struct TYPE_8__ {int bti_before; scalar_t__ bti_offset; TYPE_3__* bti_node; } ;
typedef TYPE_2__ zfs_btree_index_t ;
struct TYPE_9__ {scalar_t__ bth_core; } ;
typedef TYPE_3__ zfs_btree_hdr_t ;
struct TYPE_10__ {TYPE_3__** btc_children; } ;
typedef TYPE_4__ zfs_btree_core_t ;


 int ASSERT (int) ;
 int B_FALSE ;

__attribute__((used)) static void *
zfs_btree_first_helper(zfs_btree_hdr_t *hdr, zfs_btree_index_t *where)
{
 zfs_btree_hdr_t *node;

 for (node = hdr; node->bth_core; node =
     ((zfs_btree_core_t *)node)->btc_children[0])
  ;

 ASSERT(!node->bth_core);
 zfs_btree_leaf_t *leaf = (zfs_btree_leaf_t *)node;
 if (where != ((void*)0)) {
  where->bti_node = node;
  where->bti_offset = 0;
  where->bti_before = B_FALSE;
 }
 return (&leaf->btl_elems[0]);
}
