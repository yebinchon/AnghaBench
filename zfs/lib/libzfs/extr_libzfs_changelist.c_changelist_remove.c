
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uu_avl_walk_t ;
struct TYPE_8__ {TYPE_3__* cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_9__ {int cl_tree; } ;
typedef TYPE_2__ prop_changelist_t ;
struct TYPE_10__ {int zfs_name; } ;


 int UU_WALK_ROBUST ;
 int free (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int uu_avl_remove (int ,TYPE_1__*) ;
 int uu_avl_walk_end (int *) ;
 TYPE_1__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (int ,int ) ;
 int zfs_close (TYPE_3__*) ;

void
changelist_remove(prop_changelist_t *clp, const char *name)
{
 prop_changenode_t *cn;
 uu_avl_walk_t *walk;

 if ((walk = uu_avl_walk_start(clp->cl_tree, UU_WALK_ROBUST)) == ((void*)0))
  return;

 while ((cn = uu_avl_walk_next(walk)) != ((void*)0)) {
  if (strcmp(cn->cn_handle->zfs_name, name) == 0) {
   uu_avl_remove(clp->cl_tree, cn);
   zfs_close(cn->cn_handle);
   free(cn);
   uu_avl_walk_end(walk);
   return;
  }
 }

 uu_avl_walk_end(walk);
}
