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
struct TYPE_4__ {int libzfs_shareflags; int /*<<< orphan*/ * libzfs_sharehdl; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int SA_NO_MEMORY ; 
 int SA_OK ; 
 int ZFSSHARE_MISS ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(libzfs_handle_t *zhandle, int service)
{
	int ret = SA_OK;

	if (ret == SA_OK && zhandle->libzfs_shareflags & ZFSSHARE_MISS) {
		/*
		 * We had a cache miss. Most likely it is a new ZFS
		 * dataset that was just created. We want to make sure
		 * so check timestamps to see if a different process
		 * has updated any of the configuration. If there was
		 * some non-ZFS change, we need to re-initialize the
		 * internal cache.
		 */
		zhandle->libzfs_shareflags &= ~ZFSSHARE_MISS;
		if (FUNC1(zhandle->libzfs_sharehdl)) {
			FUNC2(zhandle);
			zhandle->libzfs_sharehdl = FUNC0(service);
		}
	}

	if (ret == SA_OK && zhandle && zhandle->libzfs_sharehdl == NULL)
		zhandle->libzfs_sharehdl = FUNC0(service);

	if (ret == SA_OK && zhandle->libzfs_sharehdl == NULL)
		ret = SA_NO_MEMORY;
	return (ret);
}