
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t bt_elem_size; } ;
typedef TYPE_2__ zfs_btree_t ;
typedef int zfs_btree_hdr_t ;
struct TYPE_6__ {int bth_core; } ;
struct TYPE_8__ {int ** btc_children; int ** btc_elems; TYPE_1__ btc_hdr; } ;
typedef TYPE_3__ zfs_btree_core_t ;
typedef int * uint8_t ;
typedef size_t uint64_t ;
typedef enum bt_shift_shape { ____Placeholder_bt_shift_shape } bt_shift_shape ;
typedef enum bt_shift_direction { ____Placeholder_bt_shift_direction } bt_shift_direction ;


 int ASSERT (int ) ;
 int BSD_LEFT ;
 int BSS_TRAPEZOID ;
 int bmov (int **,int **,size_t) ;

__attribute__((used)) static inline void
bt_shift_core(zfs_btree_t *tree, zfs_btree_core_t *node, uint64_t idx,
    uint64_t count, uint64_t off, enum bt_shift_shape shape,
    enum bt_shift_direction dir)
{
 size_t size = tree->bt_elem_size;
 ASSERT(node->btc_hdr.bth_core);

 uint8_t *e_start = node->btc_elems + idx * size;
 int sign = (dir == BSD_LEFT ? -1 : +1);
 uint8_t *e_out = e_start + sign * off * size;
 uint64_t e_count = count;
 bmov(e_start, e_out, e_count * size);

 zfs_btree_hdr_t **c_start = node->btc_children + idx +
     (shape == BSS_TRAPEZOID ? 0 : 1);
 zfs_btree_hdr_t **c_out = (dir == BSD_LEFT ? c_start - off :
     c_start + off);
 uint64_t c_count = count + (shape == BSS_TRAPEZOID ? 1 : 0);
 bmov(c_start, c_out, c_count * sizeof (*c_start));
}
