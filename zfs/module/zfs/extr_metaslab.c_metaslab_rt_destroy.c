
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_btree_t ;
typedef int range_tree_t ;
struct TYPE_3__ {int * mra_bt; } ;
typedef TYPE_1__ metaslab_rt_arg_t ;


 int kmem_free (TYPE_1__*,int) ;
 int zfs_btree_destroy (int *) ;

__attribute__((used)) static void
metaslab_rt_destroy(range_tree_t *rt, void *arg)
{
 metaslab_rt_arg_t *mrap = arg;
 zfs_btree_t *size_tree = mrap->mra_bt;

 zfs_btree_destroy(size_tree);
 kmem_free(mrap, sizeof (*mrap));
}
