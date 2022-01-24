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
struct udev_list_entry {int dummy; } ;
struct udev_device {int dummy; } ;
typedef  int /*<<< orphan*/  devbyid ;

/* Variables and functions */
 char* DEV_BYID_PATH ; 
 int ENODATA ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int /*<<< orphan*/ ) ; 
 struct udev_list_entry* FUNC4 (struct udev_device*) ; 
 char* FUNC5 (struct udev_device*,char*) ; 
 char* FUNC6 (struct udev_list_entry*) ; 
 struct udev_list_entry* FUNC7 (struct udev_list_entry*) ; 

__attribute__((used)) static int
FUNC8(struct udev_device *dev, char *bufptr, size_t buflen)
{
	struct udev_list_entry *entry;
	const char *bus;
	char devbyid[MAXPATHLEN];

	/* The bus based by-id path is preferred */
	bus = FUNC5(dev, "ID_BUS");

	if (bus == NULL) {
		const char *dm_uuid;

		/*
		 * For multipath nodes use the persistent uuid based identifier
		 *
		 * Example: 'dm-uuid-mpath-35000c5006304de3f'
		 */
		dm_uuid = FUNC5(dev, "DM_UUID");
		if (dm_uuid != NULL) {
			(void) FUNC0(bufptr, buflen, "dm-uuid-%s", dm_uuid);
			return (0);
		}
		return (ENODATA);
	}

	/*
	 * locate the bus specific by-id link
	 *
	 * Example: 'scsi-MG03SCA300_350000494a8cb3d67-part1'
	 */
	(void) FUNC0(devbyid, sizeof (devbyid), "%s%s-", DEV_BYID_PATH, bus);
	entry = FUNC4(dev);
	while (entry != NULL) {
		const char *name;

		name = FUNC6(entry);
		if (FUNC3(name, devbyid, FUNC2(devbyid)) == 0) {
			name += FUNC2(DEV_BYID_PATH);
			(void) FUNC1(bufptr, name, buflen - 1);
			bufptr[buflen - 1] = '\0';
			return (0);
		}
		entry = FUNC7(entry);
	}

	return (ENODATA);
}