
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_share_proto_t ;
typedef int uu_avl_walk_t ;
struct TYPE_5__ {int cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_6__ {scalar_t__ cl_prop; int cl_tree; } ;
typedef TYPE_2__ prop_changelist_t ;


 int UU_WALK_ROBUST ;
 scalar_t__ ZFS_PROP_SHARENFS ;
 scalar_t__ ZFS_PROP_SHARESMB ;
 int uu_avl_walk_end (int *) ;
 TYPE_1__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (int ,int ) ;
 scalar_t__ zfs_unshare_proto (int ,int *,int *) ;

int
changelist_unshare(prop_changelist_t *clp, zfs_share_proto_t *proto)
{
 prop_changenode_t *cn;
 uu_avl_walk_t *walk;
 int ret = 0;

 if (clp->cl_prop != ZFS_PROP_SHARENFS &&
     clp->cl_prop != ZFS_PROP_SHARESMB)
  return (0);

 if ((walk = uu_avl_walk_start(clp->cl_tree, UU_WALK_ROBUST)) == ((void*)0))
  return (-1);

 while ((cn = uu_avl_walk_next(walk)) != ((void*)0)) {
  if (zfs_unshare_proto(cn->cn_handle, ((void*)0), proto) != 0)
   ret = -1;
 }

 uu_avl_walk_end(walk);

 return (ret);
}
