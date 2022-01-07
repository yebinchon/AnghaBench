
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_4__ {int ui64; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ fmri_set_failed; } ;


 int FM_FMRI_SCHEME ;
 int FM_FMRI_SCHEME_ZFS ;
 int FM_FMRI_ZFS_POOL ;
 int FM_FMRI_ZFS_VDEV ;
 int FM_VERSION ;
 int ZFS_SCHEME_VERSION0 ;
 int atomic_inc_64 (int *) ;
 TYPE_3__ erpt_kstat_data ;
 scalar_t__ nvlist_add_string (int *,int ,int ) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_add_uint8 (int *,int ,int) ;

void
fm_fmri_zfs_set(nvlist_t *fmri, int version, uint64_t pool_guid,
    uint64_t vdev_guid)
{
 if (version != ZFS_SCHEME_VERSION0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 if (nvlist_add_uint8(fmri, FM_VERSION, version) != 0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 if (nvlist_add_string(fmri, FM_FMRI_SCHEME, FM_FMRI_SCHEME_ZFS) != 0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
  return;
 }

 if (nvlist_add_uint64(fmri, FM_FMRI_ZFS_POOL, pool_guid) != 0) {
  atomic_inc_64(&erpt_kstat_data.fmri_set_failed.value.ui64);
 }

 if (vdev_guid != 0) {
  if (nvlist_add_uint64(fmri, FM_FMRI_ZFS_VDEV, vdev_guid) != 0) {
   atomic_inc_64(
       &erpt_kstat_data.fmri_set_failed.value.ui64);
  }
 }
}
