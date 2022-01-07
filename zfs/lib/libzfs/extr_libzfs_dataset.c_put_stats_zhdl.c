
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * zfs_user_props; int * zfs_props; int zfs_hdl; int zfs_dmustats; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_8__ {int zc_objset_stats; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int nvlist_t ;


 int nvlist_free (int *) ;
 int * process_user_props (TYPE_1__*,int *) ;
 scalar_t__ zcmd_read_dst_nvlist (int ,TYPE_2__*,int **) ;

__attribute__((used)) static int
put_stats_zhdl(zfs_handle_t *zhp, zfs_cmd_t *zc)
{
 nvlist_t *allprops, *userprops;

 zhp->zfs_dmustats = zc->zc_objset_stats;

 if (zcmd_read_dst_nvlist(zhp->zfs_hdl, zc, &allprops) != 0) {
  return (-1);
 }





 if ((userprops = process_user_props(zhp, allprops)) == ((void*)0)) {
  nvlist_free(allprops);
  return (-1);
 }

 nvlist_free(zhp->zfs_props);
 nvlist_free(zhp->zfs_user_props);

 zhp->zfs_props = allprops;
 zhp->zfs_user_props = userprops;

 return (0);
}
