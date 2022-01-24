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
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkid_cache ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char*) ; 

__attribute__((used)) static int
FUNC6(const char *path, blkid_cache cache, int force, boolean_t isspare)
{
	int err;
	char *value;

	/* No valid type detected device is safe to use */
	value = FUNC0(cache, "TYPE", path);
	if (value == NULL)
		return (0);

	/*
	 * If libblkid detects a ZFS device, we check the device
	 * using check_file() to see if it's safe.  The one safe
	 * case is a spare device shared between multiple pools.
	 */
	if (FUNC4(value, "zfs_member") == 0) {
		err = FUNC1(path, force, isspare);
	} else {
		if (force) {
			err = 0;
		} else {
			err = -1;
			FUNC5(FUNC3("%s contains a filesystem of "
			    "type '%s'\n"), path, value);
		}
	}

	FUNC2(value);

	return (err);
}