
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;


 int ASSERT0 (int ) ;
 int range_tree_space (TYPE_1__*) ;
 int zfs_btree_numnodes (int *) ;

void
range_tree_swap(range_tree_t **rtsrc, range_tree_t **rtdst)
{
 range_tree_t *rt;

 ASSERT0(range_tree_space(*rtdst));
 ASSERT0(zfs_btree_numnodes(&(*rtdst)->rt_root));

 rt = *rtsrc;
 *rtsrc = *rtdst;
 *rtdst = rt;
}
