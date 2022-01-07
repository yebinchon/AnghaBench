
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mssa_arg {TYPE_2__* mra; TYPE_1__* rt; int member_0; } ;
struct TYPE_5__ {TYPE_2__* rt_arg; } ;
typedef TYPE_1__ range_tree_t ;
struct TYPE_6__ {scalar_t__ mra_floor_shift; int mra_bt; } ;
typedef TYPE_2__ metaslab_rt_arg_t ;


 int ASSERT0 (int ) ;
 int METASLABSTAT_BUMP (int ) ;
 int metaslab_size_sorted_add ;
 int metaslabstat_reload_tree ;
 int range_tree_walk (TYPE_1__*,int ,struct mssa_arg*) ;
 int zfs_btree_numnodes (int ) ;

__attribute__((used)) static void
metaslab_size_tree_full_load(range_tree_t *rt)
{
 metaslab_rt_arg_t *mrap = rt->rt_arg;



 ASSERT0(zfs_btree_numnodes(mrap->mra_bt));
 mrap->mra_floor_shift = 0;
 struct mssa_arg arg = {0};
 arg.rt = rt;
 arg.mra = mrap;
 range_tree_walk(rt, metaslab_size_sorted_add, &arg);
}
