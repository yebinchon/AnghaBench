
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uu_avl_walk_t ;
typedef int shareopts ;
struct TYPE_17__ {TYPE_3__* cn_handle; scalar_t__ cn_shared; scalar_t__ cn_mounted; scalar_t__ cn_needpost; scalar_t__ cn_zoned; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_18__ {scalar_t__ cl_prop; scalar_t__ cl_waslegacy; int cl_tree; } ;
typedef TYPE_2__ prop_changelist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;
struct TYPE_19__ {int * zfs_hdl; } ;


 scalar_t__ B_FALSE ;
 scalar_t__ GLOBAL_ZONEID ;
 int TRUE ;
 int UU_WALK_REVERSE ;
 int UU_WALK_ROBUST ;
 scalar_t__ ZFS_CANMOUNT_ON ;
 scalar_t__ ZFS_IS_VOLUME (TYPE_3__*) ;
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_CANMOUNT ;
 int ZFS_PROP_KEYSTATUS ;
 scalar_t__ ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_SHARENFS ;
 int ZFS_PROP_SHARESMB ;
 int assert (int ) ;
 scalar_t__ getzoneid () ;
 int remove_mountpoint (TYPE_3__*) ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_1__* uu_avl_last (int ) ;
 int uu_avl_walk_end (int *) ;
 TYPE_1__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (int ,int) ;
 int zfs_is_mounted (TYPE_3__*,int *) ;
 scalar_t__ zfs_mount (TYPE_3__*,int *,int ) ;
 scalar_t__ zfs_prop_get (TYPE_3__*,int ,char*,int,int *,int *,int ,scalar_t__) ;
 scalar_t__ zfs_prop_get_int (TYPE_3__*,int ) ;
 int zfs_refresh_properties (TYPE_3__*) ;
 scalar_t__ zfs_share_nfs (TYPE_3__*) ;
 scalar_t__ zfs_share_smb (TYPE_3__*) ;
 int zfs_uninit_libshare (int *) ;
 scalar_t__ zfs_unshare_nfs (TYPE_3__*,int *) ;
 scalar_t__ zfs_unshare_smb (TYPE_3__*,int *) ;

int
changelist_postfix(prop_changelist_t *clp)
{
 prop_changenode_t *cn;
 uu_avl_walk_t *walk;
 char shareopts[ZFS_MAXPROPLEN];
 int errors = 0;
 libzfs_handle_t *hdl;
 if ((cn = uu_avl_last(clp->cl_tree)) == ((void*)0))
  return (0);

 if (clp->cl_prop == ZFS_PROP_MOUNTPOINT)
  remove_mountpoint(cn->cn_handle);







 if (cn->cn_handle != ((void*)0)) {
  hdl = cn->cn_handle->zfs_hdl;
  assert(hdl != ((void*)0));
  zfs_uninit_libshare(hdl);
 }






 if ((walk = uu_avl_walk_start(clp->cl_tree,
     UU_WALK_REVERSE | UU_WALK_ROBUST)) == ((void*)0))
  return (-1);

 while ((cn = uu_avl_walk_next(walk)) != ((void*)0)) {

  boolean_t sharenfs;
  boolean_t sharesmb;
  boolean_t mounted;
  boolean_t needs_key;





  if (getzoneid() == GLOBAL_ZONEID && cn->cn_zoned)
   continue;


  if (!cn->cn_needpost)
   continue;
  cn->cn_needpost = B_FALSE;

  zfs_refresh_properties(cn->cn_handle);

  if (ZFS_IS_VOLUME(cn->cn_handle))
   continue;





  sharenfs = ((zfs_prop_get(cn->cn_handle, ZFS_PROP_SHARENFS,
      shareopts, sizeof (shareopts), ((void*)0), ((void*)0), 0,
      B_FALSE) == 0) && (strcmp(shareopts, "off") != 0));

  sharesmb = ((zfs_prop_get(cn->cn_handle, ZFS_PROP_SHARESMB,
      shareopts, sizeof (shareopts), ((void*)0), ((void*)0), 0,
      B_FALSE) == 0) && (strcmp(shareopts, "off") != 0));

  needs_key = (zfs_prop_get_int(cn->cn_handle,
      ZFS_PROP_KEYSTATUS) == ZFS_KEYSTATUS_UNAVAILABLE);

  mounted = zfs_is_mounted(cn->cn_handle, ((void*)0));

  if (!mounted && !needs_key && (cn->cn_mounted ||
      ((sharenfs || sharesmb || clp->cl_waslegacy) &&
      (zfs_prop_get_int(cn->cn_handle,
      ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON)))) {

   if (zfs_mount(cn->cn_handle, ((void*)0), 0) != 0)
    errors++;
   else
    mounted = TRUE;
  }






  if (sharenfs && mounted)
   errors += zfs_share_nfs(cn->cn_handle);
  else if (cn->cn_shared || clp->cl_waslegacy)
   errors += zfs_unshare_nfs(cn->cn_handle, ((void*)0));
  if (sharesmb && mounted)
   errors += zfs_share_smb(cn->cn_handle);
  else if (cn->cn_shared || clp->cl_waslegacy)
   errors += zfs_unshare_smb(cn->cn_handle, ((void*)0));
 }

 uu_avl_walk_end(walk);

 return (errors ? -1 : 0);
}
