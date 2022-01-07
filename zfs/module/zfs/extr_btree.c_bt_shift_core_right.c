
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_btree_t ;
typedef int zfs_btree_core_t ;
typedef int uint64_t ;
typedef enum bt_shift_shape { ____Placeholder_bt_shift_shape } bt_shift_shape ;


 int BSD_RIGHT ;
 int bt_shift_core (int *,int *,int ,int ,int,int,int ) ;

__attribute__((used)) static inline void
bt_shift_core_right(zfs_btree_t *tree, zfs_btree_core_t *node, uint64_t idx,
    uint64_t count, enum bt_shift_shape shape)
{
 bt_shift_core(tree, node, idx, count, 1, shape, BSD_RIGHT);
}
