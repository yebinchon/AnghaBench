
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_priority_t ;
 int panic (char*,int) ;
 int zfs_vdev_async_read_min_active ;
 int zfs_vdev_async_write_min_active ;
 int zfs_vdev_initializing_min_active ;
 int zfs_vdev_removal_min_active ;
 int zfs_vdev_scrub_min_active ;
 int zfs_vdev_sync_read_min_active ;
 int zfs_vdev_sync_write_min_active ;
 int zfs_vdev_trim_min_active ;

__attribute__((used)) static int
vdev_queue_class_min_active(zio_priority_t p)
{
 switch (p) {
 case 130:
  return (zfs_vdev_sync_read_min_active);
 case 129:
  return (zfs_vdev_sync_write_min_active);
 case 135:
  return (zfs_vdev_async_read_min_active);
 case 134:
  return (zfs_vdev_async_write_min_active);
 case 131:
  return (zfs_vdev_scrub_min_active);
 case 132:
  return (zfs_vdev_removal_min_active);
 case 133:
  return (zfs_vdev_initializing_min_active);
 case 128:
  return (zfs_vdev_trim_min_active);
 default:
  panic("invalid priority %u", p);
  return (0);
 }
}
