
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int zfs_btree_index_t ;
struct TYPE_9__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;
typedef int range_seg_t ;


 int range_tree_remove_xor_add_segment (int ,int ,TYPE_1__*,TYPE_1__*) ;
 int rs_get_end (int *,TYPE_1__*) ;
 int rs_get_start (int *,TYPE_1__*) ;
 int * zfs_btree_first (int *,int *) ;
 int * zfs_btree_next (int *,int *,int *) ;

void
range_tree_remove_xor_add(range_tree_t *rt, range_tree_t *removefrom,
    range_tree_t *addto)
{
 zfs_btree_index_t where;
 for (range_seg_t *rs = zfs_btree_first(&rt->rt_root, &where); rs;
     rs = zfs_btree_next(&rt->rt_root, &where, &where)) {
  range_tree_remove_xor_add_segment(rs_get_start(rs, rt),
      rs_get_end(rs, rt), removefrom, addto);
 }
}
