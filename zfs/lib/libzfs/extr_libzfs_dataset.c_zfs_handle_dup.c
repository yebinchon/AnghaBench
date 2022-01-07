
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zfs_props_table; int * zfs_mntopts; int zfs_hdl; int zfs_mntcheck; int * zfs_recvd_props; int * zfs_user_props; int * zfs_props; int zfs_dmustats; int zfs_head_type; int zfs_type; int zfs_name; int zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;


 TYPE_1__* calloc (int,int) ;
 int no_memory (int ) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 int strlcpy (int ,int ,int) ;
 int zfs_close (TYPE_1__*) ;
 int * zfs_strdup (int ,int *) ;

zfs_handle_t *
zfs_handle_dup(zfs_handle_t *zhp_orig)
{
 zfs_handle_t *zhp = calloc(1, sizeof (zfs_handle_t));

 if (zhp == ((void*)0))
  return (((void*)0));

 zhp->zfs_hdl = zhp_orig->zfs_hdl;
 zhp->zpool_hdl = zhp_orig->zpool_hdl;
 (void) strlcpy(zhp->zfs_name, zhp_orig->zfs_name,
     sizeof (zhp->zfs_name));
 zhp->zfs_type = zhp_orig->zfs_type;
 zhp->zfs_head_type = zhp_orig->zfs_head_type;
 zhp->zfs_dmustats = zhp_orig->zfs_dmustats;
 if (zhp_orig->zfs_props != ((void*)0)) {
  if (nvlist_dup(zhp_orig->zfs_props, &zhp->zfs_props, 0) != 0) {
   (void) no_memory(zhp->zfs_hdl);
   zfs_close(zhp);
   return (((void*)0));
  }
 }
 if (zhp_orig->zfs_user_props != ((void*)0)) {
  if (nvlist_dup(zhp_orig->zfs_user_props,
      &zhp->zfs_user_props, 0) != 0) {
   (void) no_memory(zhp->zfs_hdl);
   zfs_close(zhp);
   return (((void*)0));
  }
 }
 if (zhp_orig->zfs_recvd_props != ((void*)0)) {
  if (nvlist_dup(zhp_orig->zfs_recvd_props,
      &zhp->zfs_recvd_props, 0)) {
   (void) no_memory(zhp->zfs_hdl);
   zfs_close(zhp);
   return (((void*)0));
  }
 }
 zhp->zfs_mntcheck = zhp_orig->zfs_mntcheck;
 if (zhp_orig->zfs_mntopts != ((void*)0)) {
  zhp->zfs_mntopts = zfs_strdup(zhp_orig->zfs_hdl,
      zhp_orig->zfs_mntopts);
 }
 zhp->zfs_props_table = zhp_orig->zfs_props_table;
 return (zhp);
}
