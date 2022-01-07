
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uu_avl_walk_t ;
struct TYPE_7__ {scalar_t__ cl_pool; scalar_t__ cl_tree; int cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
typedef TYPE_1__ prop_changelist_t ;


 int UU_WALK_ROBUST ;
 int free (TYPE_1__*) ;
 int uu_avl_destroy (scalar_t__) ;
 int uu_avl_pool_destroy (scalar_t__) ;
 int uu_avl_remove (scalar_t__,TYPE_1__*) ;
 int uu_avl_walk_end (int *) ;
 TYPE_1__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (scalar_t__,int ) ;
 int zfs_close (int ) ;

void
changelist_free(prop_changelist_t *clp)
{
 prop_changenode_t *cn;

 if (clp->cl_tree) {
  uu_avl_walk_t *walk;

  if ((walk = uu_avl_walk_start(clp->cl_tree,
      UU_WALK_ROBUST)) == ((void*)0))
   return;

  while ((cn = uu_avl_walk_next(walk)) != ((void*)0)) {
   uu_avl_remove(clp->cl_tree, cn);
   zfs_close(cn->cn_handle);
   free(cn);
  }

  uu_avl_walk_end(walk);
  uu_avl_destroy(clp->cl_tree);
 }
 if (clp->cl_pool)
  uu_avl_pool_destroy(clp->cl_pool);

 free(clp);
}
