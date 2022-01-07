
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t bt_elem_size; } ;
typedef TYPE_2__ zfs_btree_t ;
struct TYPE_7__ {int bth_core; } ;
struct TYPE_9__ {scalar_t__ btl_elems; TYPE_1__ btl_hdr; } ;
typedef TYPE_3__ zfs_btree_leaf_t ;
typedef size_t uint64_t ;


 int ASSERT (int) ;
 int bmov (scalar_t__,scalar_t__,size_t) ;

__attribute__((used)) static inline void
bt_transfer_leaf(zfs_btree_t *tree, zfs_btree_leaf_t *source, uint64_t sidx,
    uint64_t count, zfs_btree_leaf_t *dest, uint64_t didx)
{
 size_t size = tree->bt_elem_size;
 ASSERT(!source->btl_hdr.bth_core);
 ASSERT(!dest->btl_hdr.bth_core);

 bmov(source->btl_elems + sidx * size, dest->btl_elems + didx * size,
     count * size);
}
