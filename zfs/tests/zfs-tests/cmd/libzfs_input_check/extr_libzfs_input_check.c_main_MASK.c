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

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int unexpected_failures ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ zfs_fd ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int
FUNC9(int argc, const char *argv[])
{
	if (argc != 2) {
		(void) FUNC2(stderr, "usage: %s <pool>\n", argv[0]);
		FUNC1(2);
	}

	if (!FUNC7()) {
		(void) FUNC2(stderr, "WARNING: zfs_ioc_t has binary "
		    "incompatible command values\n");
		FUNC1(3);
	}

	(void) FUNC4();
	zfs_fd = FUNC5(ZFS_DEV, O_RDWR);
	if (zfs_fd < 0) {
		(void) FUNC2(stderr, "open: %s\n", FUNC6(errno));
		FUNC3();
		FUNC1(2);
	}

	FUNC8(argv[1]);

	(void) FUNC0(zfs_fd);
	FUNC3();

	return (unexpected_failures);
}