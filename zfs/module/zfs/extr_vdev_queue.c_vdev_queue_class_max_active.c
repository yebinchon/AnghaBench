
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_priority_t ;
typedef int spa_t ;
 int panic (char*,int) ;
 int vdev_queue_max_async_writes (int *) ;
 int zfs_vdev_async_read_max_active ;
 int zfs_vdev_initializing_max_active ;
 int zfs_vdev_removal_max_active ;
 int zfs_vdev_scrub_max_active ;
 int zfs_vdev_sync_read_max_active ;
 int zfs_vdev_sync_write_max_active ;
 int zfs_vdev_trim_max_active ;

__attribute__((used)) static int
vdev_queue_class_max_active(spa_t *spa, zio_priority_t p)
{
 switch (p) {
 case 130:
  return (zfs_vdev_sync_read_max_active);
 case 129:
  return (zfs_vdev_sync_write_max_active);
 case 135:
  return (zfs_vdev_async_read_max_active);
 case 134:
  return (vdev_queue_max_async_writes(spa));
 case 131:
  return (zfs_vdev_scrub_max_active);
 case 132:
  return (zfs_vdev_removal_max_active);
 case 133:
  return (zfs_vdev_initializing_max_active);
 case 128:
  return (zfs_vdev_trim_max_active);
 default:
  panic("invalid priority %u", p);
  return (0);
 }
}
