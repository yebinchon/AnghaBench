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
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;
typedef  int /*<<< orphan*/  devid ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (struct udev_device*,char*,int) ; 
 struct udev_device* FUNC6 (struct udev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct udev_device*) ; 
 struct udev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct udev*) ; 

int
FUNC10(int argc, char *argv[])
{
	struct udev *udev;
	struct udev_device *dev = NULL;
	char devid[128], nodepath[MAXPATHLEN];
	char *device, *sysname;
	int ret;

	if (argc == 1) {
		(void) FUNC2("%s <devicepath> [search path]\n", argv[0]);
		FUNC0(1);
	}
	device = argv[1];

	if ((udev = FUNC8()) == NULL) {
		FUNC1("udev_new");
		FUNC0(1);
	}

	/* resolve path to a runtime device node instance */
	if (FUNC3(device, nodepath) == NULL) {
		FUNC1("realpath");
		FUNC0(1);
	}
	sysname = FUNC4(nodepath, '/') + 1;

	if ((dev = FUNC6(udev, "block",
	    sysname)) == NULL) {
		FUNC1(sysname);
		FUNC0(1);
	}

	if ((ret = FUNC5(dev, devid, sizeof (devid))) != 0) {
		FUNC7(dev);
		errno = ret;
		FUNC1(sysname);
		FUNC0(1);
	}

	(void) FUNC2("devid %s\n", devid);

	FUNC7(dev);
	FUNC9(udev);

	return (0);
}