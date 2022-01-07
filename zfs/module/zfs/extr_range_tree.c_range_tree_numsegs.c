
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;


 int zfs_btree_numnodes (int *) ;

uint64_t
range_tree_numsegs(range_tree_t *rt)
{
 return ((rt == ((void*)0)) ? 0 : zfs_btree_numnodes(&rt->rt_root));
}
