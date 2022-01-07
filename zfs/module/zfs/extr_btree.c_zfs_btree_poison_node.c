
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t bt_elem_size; } ;
typedef TYPE_1__ zfs_btree_t ;
struct TYPE_8__ {scalar_t__ btl_elems; } ;
typedef TYPE_2__ zfs_btree_leaf_t ;
struct TYPE_9__ {size_t bth_count; int bth_core; } ;
typedef TYPE_3__ zfs_btree_hdr_t ;
struct TYPE_10__ {scalar_t__ btc_elems; TYPE_3__** btc_children; } ;
typedef TYPE_4__ zfs_btree_core_t ;


 int BTREE_CORE_ELEMS ;
 int BTREE_LEAF_SIZE ;
 scalar_t__ BTREE_POISON ;
 int memset (scalar_t__,int,int) ;

__attribute__((used)) static void
zfs_btree_poison_node(zfs_btree_t *tree, zfs_btree_hdr_t *hdr)
{
}
