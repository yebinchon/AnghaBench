#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* vds_devphys; int /*<<< orphan*/  vds_devid; } ;
typedef  TYPE_1__ vdev_dev_strs_t ;
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;
typedef  scalar_t__ hrtime_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENXIO ; 
 int MAXPATHLEN ; 
 int MILLISEC ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (struct udev_device*) ; 
 struct udev_device* FUNC6 (struct udev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct udev_device*) ; 
 struct udev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct udev*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct udev_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct udev_device*,char*,int) ; 

__attribute__((used)) static int
FUNC14(const char *path, vdev_dev_strs_t *ds,
    boolean_t wholedisk)
{
#ifdef HAVE_LIBUDEV
	struct udev *udev;
	struct udev_device *dev = NULL;
	char nodepath[MAXPATHLEN];
	char *sysname;
	int ret = ENODEV;
	hrtime_t start;

	if ((udev = udev_new()) == NULL)
		return (ENXIO);

	/* resolve path to a runtime device node instance */
	if (realpath(path, nodepath) == NULL)
		goto no_dev;

	sysname = strrchr(nodepath, '/') + 1;

	/*
	 * Wait up to 3 seconds for udev to set up the device node context
	 */
	start = gethrtime();
	do {
		dev = udev_device_new_from_subsystem_sysname(udev, "block",
		    sysname);
		if (dev == NULL)
			goto no_dev;
		if (udev_device_is_ready(dev))
			break;  /* udev ready */

		udev_device_unref(dev);
		dev = NULL;

		if (NSEC2MSEC(gethrtime() - start) < 10)
			(void) sched_yield();	/* yield/busy wait up to 10ms */
		else
			(void) usleep(10 * MILLISEC);

	} while (NSEC2MSEC(gethrtime() - start) < (3 * MILLISEC));

	if (dev == NULL)
		goto no_dev;

	/*
	 * Only whole disks require extra device strings
	 */
	if (!wholedisk && !udev_mpath_whole_disk(dev))
		goto no_dev;

	ret = zfs_device_get_devid(dev, ds->vds_devid, sizeof (ds->vds_devid));
	if (ret != 0)
		goto no_dev_ref;

	/* physical location string (optional) */
	if (zfs_device_get_physical(dev, ds->vds_devphys,
	    sizeof (ds->vds_devphys)) != 0) {
		ds->vds_devphys[0] = '\0'; /* empty string --> not available */
	}

no_dev_ref:
	udev_device_unref(dev);
no_dev:
	udev_unref(udev);

	return (ret);
#else
	return (ENOENT);
#endif
}