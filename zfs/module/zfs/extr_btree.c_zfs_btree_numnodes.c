
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bt_num_elems; } ;
typedef TYPE_1__ zfs_btree_t ;
typedef int ulong_t ;



ulong_t
zfs_btree_numnodes(zfs_btree_t *tree)
{
 return (tree->bt_num_elems);
}
