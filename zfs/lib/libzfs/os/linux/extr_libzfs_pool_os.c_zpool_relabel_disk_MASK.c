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
 int /*<<< orphan*/  BLKFLSBUF ; 
 int /*<<< orphan*/  EZFS_NOCAP ; 
 int /*<<< orphan*/  EZFS_OPENFAILED ; 
 int O_DIRECT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int VT_ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 

int
FUNC8(libzfs_handle_t *hdl, const char *path, const char *msg)
{
	int fd, error;

	if ((fd = FUNC5(path, O_RDWR|O_DIRECT)) < 0) {
		FUNC7(hdl, FUNC1(TEXT_DOMAIN, "cannot "
		    "relabel '%s': unable to open device: %d"), path, errno);
		return (FUNC6(hdl, EZFS_OPENFAILED, msg));
	}

	/*
	 * It's possible that we might encounter an error if the device
	 * does not have any unallocated space left. If so, we simply
	 * ignore that error and continue on.
	 *
	 * Also, we don't call efi_rescan() - that would just return EBUSY.
	 * The module will do it for us in vdev_disk_open().
	 */
	error = FUNC2(fd);

	/* Flush the buffers to disk and invalidate the page cache. */
	(void) FUNC3(fd);
	(void) FUNC4(fd, BLKFLSBUF);

	(void) FUNC0(fd);
	if (error && error != VT_ENOSPC) {
		FUNC7(hdl, FUNC1(TEXT_DOMAIN, "cannot "
		    "relabel '%s': unable to read disk capacity"), path);
		return (FUNC6(hdl, EZFS_NOCAP, msg));
	}
	return (0);
}