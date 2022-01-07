
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rt_root; int rt_arg; TYPE_1__* rt_ops; int rt_space; } ;
typedef TYPE_2__ range_tree_t ;
struct TYPE_6__ {int (* rtop_destroy ) (TYPE_2__*,int ) ;} ;


 int VERIFY0 (int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*,int ) ;
 int zfs_btree_destroy (int *) ;

void
range_tree_destroy(range_tree_t *rt)
{
 VERIFY0(rt->rt_space);

 if (rt->rt_ops != ((void*)0) && rt->rt_ops->rtop_destroy != ((void*)0))
  rt->rt_ops->rtop_destroy(rt, rt->rt_arg);

 zfs_btree_destroy(&rt->rt_root);
 kmem_free(rt, sizeof (*rt));
}
