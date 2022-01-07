
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zrr_pool; scalar_t__ zrr_vdev; struct TYPE_5__* zrr_next; } ;
typedef TYPE_1__ zfs_retire_repaired_t ;
struct TYPE_6__ {TYPE_1__* zrd_repaired; } ;
typedef TYPE_2__ zfs_retire_data_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int fmd_hdl_t ;


 int FMD_SLEEP ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ;
 TYPE_1__* fmd_hdl_alloc (int *,int,int ) ;
 int fmd_hdl_debug (int *,char*,scalar_t__,scalar_t__) ;
 TYPE_2__* fmd_hdl_getspecific (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;

__attribute__((used)) static void
zfs_vdev_repair(fmd_hdl_t *hdl, nvlist_t *nvl)
{
 zfs_retire_data_t *zdp = fmd_hdl_getspecific(hdl);
 zfs_retire_repaired_t *zrp;
 uint64_t pool_guid, vdev_guid;
 if (nvlist_lookup_uint64(nvl, FM_EREPORT_PAYLOAD_ZFS_POOL_GUID,
     &pool_guid) != 0 || nvlist_lookup_uint64(nvl,
     FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, &vdev_guid) != 0)
  return;
 for (zrp = zdp->zrd_repaired; zrp != ((void*)0); zrp = zrp->zrr_next) {
  if (zrp->zrr_pool == pool_guid &&
      zrp->zrr_vdev == vdev_guid)
   return;
 }

 zrp = fmd_hdl_alloc(hdl, sizeof (zfs_retire_repaired_t), FMD_SLEEP);
 zrp->zrr_next = zdp->zrd_repaired;
 zrp->zrr_pool = pool_guid;
 zrp->zrr_vdev = vdev_guid;
 zdp->zrd_repaired = zrp;

 fmd_hdl_debug(hdl, "marking repaired vdev %llu on pool %llu",
     vdev_guid, pool_guid);
}
