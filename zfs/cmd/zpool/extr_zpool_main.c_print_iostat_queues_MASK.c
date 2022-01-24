#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct stat_array {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_4__ {int /*<<< orphan*/  cb_scripted; scalar_t__ cb_literal; } ;
typedef  TYPE_1__ iostat_cbdata_t ;
typedef  enum zfs_nicenum_format { ____Placeholder_zfs_nicenum_format } zfs_nicenum_format ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  IOS_QUEUES ; 
 int ZFS_NICENUM_1024 ; 
 int ZFS_NICENUM_RAW ; 
 char const* ZPOOL_CONFIG_VDEV_ASYNC_R_ACTIVE_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_ASYNC_R_PEND_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_ASYNC_W_ACTIVE_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_ASYNC_W_PEND_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_SCRUB_ACTIVE_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_SCRUB_PEND_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_SYNC_R_ACTIVE_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_SYNC_R_PEND_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_SYNC_W_ACTIVE_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_SYNC_W_PEND_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_TRIM_ACTIVE_QUEUE ; 
 char const* ZPOOL_CONFIG_VDEV_TRIM_PEND_QUEUE ; 
 struct stat_array* FUNC1 (char const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stat_array*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(iostat_cbdata_t *cb, nvlist_t *oldnv,
    nvlist_t *newnv)
{
	int i;
	uint64_t val;
	const char *names[] = {
		ZPOOL_CONFIG_VDEV_SYNC_R_PEND_QUEUE,
		ZPOOL_CONFIG_VDEV_SYNC_R_ACTIVE_QUEUE,
		ZPOOL_CONFIG_VDEV_SYNC_W_PEND_QUEUE,
		ZPOOL_CONFIG_VDEV_SYNC_W_ACTIVE_QUEUE,
		ZPOOL_CONFIG_VDEV_ASYNC_R_PEND_QUEUE,
		ZPOOL_CONFIG_VDEV_ASYNC_R_ACTIVE_QUEUE,
		ZPOOL_CONFIG_VDEV_ASYNC_W_PEND_QUEUE,
		ZPOOL_CONFIG_VDEV_ASYNC_W_ACTIVE_QUEUE,
		ZPOOL_CONFIG_VDEV_SCRUB_PEND_QUEUE,
		ZPOOL_CONFIG_VDEV_SCRUB_ACTIVE_QUEUE,
		ZPOOL_CONFIG_VDEV_TRIM_PEND_QUEUE,
		ZPOOL_CONFIG_VDEV_TRIM_ACTIVE_QUEUE,
	};

	struct stat_array *nva;

	unsigned int column_width = FUNC2(cb, IOS_QUEUES);
	enum zfs_nicenum_format format;

	nva = FUNC1(names, FUNC0(names), NULL, newnv);

	if (cb->cb_literal)
		format = ZFS_NICENUM_RAW;
	else
		format = ZFS_NICENUM_1024;

	for (i = 0; i < FUNC0(names); i++) {
		val = nva[i].data[0];
		FUNC4(val, format, column_width, cb->cb_scripted);
	}

	FUNC3(nva, FUNC0(names));
}