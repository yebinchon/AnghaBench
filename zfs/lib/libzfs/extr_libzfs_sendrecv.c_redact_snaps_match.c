
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zfs_type; int zfs_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int num_redact_snaps; scalar_t__* redact_snap_guids; } ;
typedef TYPE_2__ guid_to_name_data_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZFS_PROP_REDACT_SNAPS ;
 scalar_t__ ZFS_TYPE_BOOKMARK ;
 int ZPROP_VALUE ;
 int * fnvlist_lookup_nvlist (int ,int ) ;
 scalar_t__* fnvlist_lookup_uint64_array (int *,int ,int*) ;
 int zfs_prop_to_name (int ) ;

boolean_t
redact_snaps_match(zfs_handle_t *zhp, guid_to_name_data_t *gtnd)
{
 uint64_t *bmark_snaps;
 uint_t bmark_num_snaps;
 nvlist_t *nvl;
 if (zhp->zfs_type != ZFS_TYPE_BOOKMARK)
  return (B_FALSE);

 nvl = fnvlist_lookup_nvlist(zhp->zfs_props,
     zfs_prop_to_name(ZFS_PROP_REDACT_SNAPS));
 bmark_snaps = fnvlist_lookup_uint64_array(nvl, ZPROP_VALUE,
     &bmark_num_snaps);
 if (bmark_num_snaps != gtnd->num_redact_snaps)
  return (B_FALSE);
 int i = 0;
 for (; i < bmark_num_snaps; i++) {
  int j = 0;
  for (; j < bmark_num_snaps; j++) {
   if (bmark_snaps[i] == gtnd->redact_snap_guids[j])
    break;
  }
  if (j == bmark_num_snaps)
   break;
 }
 return (i == bmark_num_snaps);
}
