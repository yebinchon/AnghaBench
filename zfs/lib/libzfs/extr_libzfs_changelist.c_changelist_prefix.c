
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uu_avl_walk_t ;
struct TYPE_6__ {int cn_handle; void* cn_needpost; scalar_t__ cn_zoned; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_7__ {int cl_prop; int cl_mflags; int cl_tree; } ;
typedef TYPE_2__ prop_changelist_t ;


 void* B_FALSE ;
 scalar_t__ GLOBAL_ZONEID ;
 int UU_WALK_ROBUST ;
 int ZFS_IS_VOLUME (int ) ;


 int changelist_postfix (TYPE_2__*) ;
 scalar_t__ getzoneid () ;
 int uu_avl_walk_end (int *) ;
 TYPE_1__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (int ,int ) ;
 int zfs_unmount (int ,int *,int ) ;
 int zfs_unshare_smb (int ,int *) ;

int
changelist_prefix(prop_changelist_t *clp)
{
 prop_changenode_t *cn;
 uu_avl_walk_t *walk;
 int ret = 0;

 if (clp->cl_prop != 129 &&
     clp->cl_prop != 128)
  return (0);

 if ((walk = uu_avl_walk_start(clp->cl_tree, UU_WALK_ROBUST)) == ((void*)0))
  return (-1);

 while ((cn = uu_avl_walk_next(walk)) != ((void*)0)) {


  if (ret == -1) {
   cn->cn_needpost = B_FALSE;
   continue;
  }





  if (getzoneid() == GLOBAL_ZONEID && cn->cn_zoned)
   continue;

  if (!ZFS_IS_VOLUME(cn->cn_handle)) {



   switch (clp->cl_prop) {
   case 129:
    if (zfs_unmount(cn->cn_handle, ((void*)0),
        clp->cl_mflags) != 0) {
     ret = -1;
     cn->cn_needpost = B_FALSE;
    }
    break;
   case 128:
    (void) zfs_unshare_smb(cn->cn_handle, ((void*)0));
    break;

   default:
    break;
   }
  }
 }

 uu_avl_walk_end(walk);

 if (ret == -1)
  (void) changelist_postfix(clp);

 return (ret);
}
