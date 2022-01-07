
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_btree_t ;
typedef int range_tree_t ;
typedef int range_seg_t ;
struct TYPE_2__ {int mra_floor_shift; int * mra_bt; } ;
typedef TYPE_1__ metaslab_rt_arg_t ;


 int rs_get_end (int *,int *) ;
 int rs_get_start (int *,int *) ;
 int zfs_btree_add (int *,int *) ;

__attribute__((used)) static void
metaslab_rt_add(range_tree_t *rt, range_seg_t *rs, void *arg)
{
 metaslab_rt_arg_t *mrap = arg;
 zfs_btree_t *size_tree = mrap->mra_bt;

 if (rs_get_end(rs, rt) - rs_get_start(rs, rt) <
     (1 << mrap->mra_floor_shift))
  return;

 zfs_btree_add(size_tree, rs);
}
