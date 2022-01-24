#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int zio_priority_t ;

/* Variables and functions */
#define  ZIO_PRIORITY_ASYNC_READ 135 
#define  ZIO_PRIORITY_ASYNC_WRITE 134 
#define  ZIO_PRIORITY_INITIALIZING 133 
#define  ZIO_PRIORITY_REMOVAL 132 
#define  ZIO_PRIORITY_SCRUB 131 
#define  ZIO_PRIORITY_SYNC_READ 130 
#define  ZIO_PRIORITY_SYNC_WRITE 129 
#define  ZIO_PRIORITY_TRIM 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int zfs_vdev_async_read_min_active ; 
 int zfs_vdev_async_write_min_active ; 
 int zfs_vdev_initializing_min_active ; 
 int zfs_vdev_removal_min_active ; 
 int zfs_vdev_scrub_min_active ; 
 int zfs_vdev_sync_read_min_active ; 
 int zfs_vdev_sync_write_min_active ; 
 int zfs_vdev_trim_min_active ; 

__attribute__((used)) static int
FUNC1(zio_priority_t p)
{
	switch (p) {
	case ZIO_PRIORITY_SYNC_READ:
		return (zfs_vdev_sync_read_min_active);
	case ZIO_PRIORITY_SYNC_WRITE:
		return (zfs_vdev_sync_write_min_active);
	case ZIO_PRIORITY_ASYNC_READ:
		return (zfs_vdev_async_read_min_active);
	case ZIO_PRIORITY_ASYNC_WRITE:
		return (zfs_vdev_async_write_min_active);
	case ZIO_PRIORITY_SCRUB:
		return (zfs_vdev_scrub_min_active);
	case ZIO_PRIORITY_REMOVAL:
		return (zfs_vdev_removal_min_active);
	case ZIO_PRIORITY_INITIALIZING:
		return (zfs_vdev_initializing_min_active);
	case ZIO_PRIORITY_TRIM:
		return (zfs_vdev_trim_min_active);
	default:
		FUNC0("invalid priority %u", p);
		return (0);
	}
}