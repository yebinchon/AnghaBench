
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_btree_t ;
typedef int range_tree_t ;
struct TYPE_2__ {int * mra_bt; } ;
typedef TYPE_1__ metaslab_rt_arg_t ;


 int metaslab_rt_create (int *,void*) ;
 int zfs_btree_clear (int *) ;
 int zfs_btree_destroy (int *) ;

__attribute__((used)) static void
metaslab_rt_vacate(range_tree_t *rt, void *arg)
{
 metaslab_rt_arg_t *mrap = arg;
 zfs_btree_t *size_tree = mrap->mra_bt;
 zfs_btree_clear(size_tree);
 zfs_btree_destroy(size_tree);

 metaslab_rt_create(rt, arg);
}
