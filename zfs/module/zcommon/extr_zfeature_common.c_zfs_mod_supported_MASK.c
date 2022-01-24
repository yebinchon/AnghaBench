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
struct stat64 {int dummy; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 int B_TRUE ; 
 int /*<<< orphan*/  ZFS_SYSFS_ALT_DIR ; 
 int /*<<< orphan*/  ZFS_SYSFS_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct stat64*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(const char *scope, const char *name)
{
	boolean_t supported;

	/*
	 * Check both the primary and alternate sysfs locations to determine
	 * if the required functionality is supported.
	 */
	supported = (FUNC1(scope, name, ZFS_SYSFS_DIR) ||
	    FUNC1(scope, name, ZFS_SYSFS_ALT_DIR));

	/*
	 * For backwards compatibility with kernel modules that predate
	 * supported feature/property checking.  Report the feature/property
	 * as supported if the kernel module is loaded but the requested
	 * scope directory does not exist.
	 */
	if (supported == B_FALSE) {
		struct stat64 statbuf;
		if ((FUNC0(ZFS_SYSFS_DIR, &statbuf) == 0) &&
		    !FUNC1(scope, NULL, ZFS_SYSFS_DIR) &&
		    !FUNC1(scope, NULL, ZFS_SYSFS_ALT_DIR)) {
			supported = B_TRUE;
		}
	}

	return (supported);
}