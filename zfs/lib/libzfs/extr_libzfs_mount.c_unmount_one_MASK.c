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
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_UMOUNTFAILED ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC3(libzfs_handle_t *hdl, const char *mountpoint, int flags)
{
	int error;

	error = FUNC1(mountpoint, flags);
	if (error != 0) {
		return (FUNC2(hdl, EZFS_UMOUNTFAILED,
		    FUNC0(TEXT_DOMAIN, "cannot unmount '%s'"),
		    mountpoint));
	}

	return (0);
}