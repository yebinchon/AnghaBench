
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_btree_index_t ;
struct TYPE_5__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;
typedef int range_seg_t ;
typedef int int64_t ;
typedef int avl_tree_t ;


 int rs_get_end (int *,TYPE_1__*) ;
 int rs_get_start (int *,TYPE_1__*) ;
 int space_reftree_add_seg (int *,int ,int ,int ) ;
 int * zfs_btree_first (int *,int *) ;
 int * zfs_btree_next (int *,int *,int *) ;

void
space_reftree_add_map(avl_tree_t *t, range_tree_t *rt, int64_t refcnt)
{
 zfs_btree_index_t where;

 for (range_seg_t *rs = zfs_btree_first(&rt->rt_root, &where); rs; rs =
     zfs_btree_next(&rt->rt_root, &where, &where)) {
  space_reftree_add_seg(t, rs_get_start(rs, rt), rs_get_end(rs,
      rt), refcnt);
 }
}
