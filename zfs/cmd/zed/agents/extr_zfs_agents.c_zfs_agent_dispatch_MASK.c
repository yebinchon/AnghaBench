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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 char* EC_ZFS ; 
 char* FM_LIST_SUSPECT_CLASS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(const char *class, const char *subclass, nvlist_t *nvl)
{
	/*
	 * The diagnosis engine subscribes to the following events.
	 * On illumos these subscriptions reside in:
	 * 	/usr/lib/fm/fmd/plugins/zfs-diagnosis.conf
	 */
	if (FUNC3(class, "ereport.fs.zfs.") != NULL ||
	    FUNC3(class, "resource.fs.zfs.") != NULL ||
	    FUNC2(class, "sysevent.fs.zfs.vdev_remove") == 0 ||
	    FUNC2(class, "sysevent.fs.zfs.vdev_remove_dev") == 0 ||
	    FUNC2(class, "sysevent.fs.zfs.pool_destroy") == 0) {
		FUNC1(FUNC0("zfs-diagnosis"), nvl, class);
	}

	/*
	 * The retire agent subscribes to the following events.
	 * On illumos these subscriptions reside in:
	 * 	/usr/lib/fm/fmd/plugins/zfs-retire.conf
	 *
	 * NOTE: faults events come directly from our diagnosis engine
	 * and will not pass through the zfs kernel module.
	 */
	if (FUNC2(class, FM_LIST_SUSPECT_CLASS) == 0 ||
	    FUNC2(class, "resource.fs.zfs.removed") == 0 ||
	    FUNC2(class, "resource.fs.zfs.statechange") == 0 ||
	    FUNC2(class, "sysevent.fs.zfs.vdev_remove")  == 0) {
		FUNC1(FUNC0("zfs-retire"), nvl, class);
	}

	/*
	 * The SLM module only consumes disk events and vdev check events
	 *
	 * NOTE: disk events come directly from disk monitor and will
	 * not pass through the zfs kernel module.
	 */
	if (FUNC3(class, "EC_dev_") != NULL ||
	    FUNC2(class, EC_ZFS) == 0) {
		(void) FUNC4(class, subclass, nvl);
	}
}