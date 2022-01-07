
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zc_pool_guid; scalar_t__ zc_vdev_guid; scalar_t__ zc_has_remove_timer; } ;
struct TYPE_6__ {TYPE_1__ zc_data; int zc_remove_timer; int zc_case; } ;
typedef TYPE_2__ zfs_case_t ;
typedef int nvlist_t ;
typedef int fmd_hdl_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int FMD_SLEEP ;
 int FM_FMRI_SCHEME ;
 int FM_FMRI_SCHEME_ZFS ;
 int FM_FMRI_ZFS_POOL ;
 int FM_FMRI_ZFS_VDEV ;
 int FM_VERSION ;
 int ZFS_SCHEME_VERSION0 ;
 int fmd_case_add_suspect (int *,int ,int *) ;
 int fmd_case_solve (int *,int ) ;
 int fmd_hdl_debug (int *,char*,char const*) ;
 int * fmd_nvl_alloc (int *,int ) ;
 int * fmd_nvl_create_fault (int *,char const*,int,int *,int *,int *) ;
 int fmd_timer_remove (int *,int ) ;
 int nvlist_add_string (int *,int ,int ) ;
 int nvlist_add_uint64 (int *,int ,scalar_t__) ;
 int nvlist_add_uint8 (int *,int ,int ) ;
 int nvlist_free (int *) ;
 int zfs_case_serialize (int *,TYPE_2__*) ;

__attribute__((used)) static void
zfs_case_solve(fmd_hdl_t *hdl, zfs_case_t *zcp, const char *faultname,
    boolean_t checkunusable)
{
 nvlist_t *detector, *fault;
 boolean_t serialize;
 nvlist_t *fru = ((void*)0);
 fmd_hdl_debug(hdl, "solving fault '%s'", faultname);






 detector = fmd_nvl_alloc(hdl, FMD_SLEEP);

 (void) nvlist_add_uint8(detector, FM_VERSION, ZFS_SCHEME_VERSION0);
 (void) nvlist_add_string(detector, FM_FMRI_SCHEME, FM_FMRI_SCHEME_ZFS);
 (void) nvlist_add_uint64(detector, FM_FMRI_ZFS_POOL,
     zcp->zc_data.zc_pool_guid);
 if (zcp->zc_data.zc_vdev_guid != 0) {
  (void) nvlist_add_uint64(detector, FM_FMRI_ZFS_VDEV,
      zcp->zc_data.zc_vdev_guid);
 }

 fault = fmd_nvl_create_fault(hdl, faultname, 100, detector,
     fru, detector);
 fmd_case_add_suspect(hdl, zcp->zc_case, fault);

 nvlist_free(fru);

 fmd_case_solve(hdl, zcp->zc_case);

 serialize = B_FALSE;
 if (zcp->zc_data.zc_has_remove_timer) {
  fmd_timer_remove(hdl, zcp->zc_remove_timer);
  zcp->zc_data.zc_has_remove_timer = 0;
  serialize = B_TRUE;
 }
 if (serialize)
  zfs_case_serialize(hdl, zcp);

 nvlist_free(detector);
}
