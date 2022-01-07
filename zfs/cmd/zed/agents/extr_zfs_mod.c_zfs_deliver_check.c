
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvlist_t ;
struct TYPE_3__ {scalar_t__ dd_pool_guid; scalar_t__ dd_vdev_guid; int dd_func; int member_0; } ;
typedef TYPE_1__ dev_data_t ;


 int LOG_INFO ;
 int ZFS_EV_POOL_GUID ;
 int ZFS_EV_VDEV_GUID ;
 int g_zfshdl ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int zed_log_msg (int ,char*,scalar_t__,scalar_t__) ;
 int zfs_iter_pool ;
 int zfs_process_add ;
 int zpool_iter (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
zfs_deliver_check(nvlist_t *nvl)
{
 dev_data_t data = { 0 };

 if (nvlist_lookup_uint64(nvl, ZFS_EV_POOL_GUID,
     &data.dd_pool_guid) != 0 ||
     nvlist_lookup_uint64(nvl, ZFS_EV_VDEV_GUID,
     &data.dd_vdev_guid) != 0 ||
     data.dd_vdev_guid == 0)
  return (0);

 zed_log_msg(LOG_INFO, "zfs_deliver_check: pool '%llu', vdev %llu",
     data.dd_pool_guid, data.dd_vdev_guid);

 data.dd_func = zfs_process_add;

 (void) zpool_iter(g_zfshdl, zfs_iter_pool, &data);

 return (0);
}
