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
typedef  scalar_t__ hrtime_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int ENOEXEC ; 
 int ENXIO ; 
 long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long MILLISEC ; 
 int /*<<< orphan*/  FUNC1 (long,int) ; 
 long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 long FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(const char *module)
{
	char *argv[4] = {"/sbin/modprobe", "-q", (char *)module, (char *)0};
	char *load_str, *timeout_str;
	long timeout = 10; /* seconds */
	long busy_timeout = 10; /* milliseconds */
	int load = 0, fd;
	hrtime_t start;

	/* Optionally request module loading */
	if (!FUNC6(module)) {
		load_str = FUNC4("ZFS_MODULE_LOADING");
		if (load_str) {
			if (!FUNC11(load_str, "YES", FUNC10("YES")) ||
			    !FUNC11(load_str, "ON", FUNC10("ON")))
				load = 1;
			else
				load = 0;
		}

		if (load) {
			if (FUNC7("/sbin/modprobe", argv, 0))
				return (ENOEXEC);
		}

		if (!FUNC6(module))
			return (ENXIO);
	}

	/*
	 * Device creation by udev is asynchronous and waiting may be
	 * required.  Busy wait for 10ms and then fall back to polling every
	 * 10ms for the allowed timeout (default 10s, max 10m).  This is
	 * done to optimize for the common case where the device is
	 * immediately available and to avoid penalizing the possible
	 * case where udev is slow or unable to create the device.
	 */
	timeout_str = FUNC4("ZFS_MODULE_TIMEOUT");
	if (timeout_str) {
		timeout = FUNC12(timeout_str, NULL, 0);
		timeout = FUNC0(FUNC1(timeout, (10 * 60)), 0); /* 0 <= N <= 600 */
	}

	start = FUNC5();
	do {
		fd = FUNC8(ZFS_DEV, O_RDWR);
		if (fd >= 0) {
			(void) FUNC3(fd);
			return (0);
		} else if (errno != ENOENT) {
			return (errno);
		} else if (FUNC2(FUNC5() - start) < busy_timeout) {
			FUNC9();
		} else {
			FUNC13(10 * MILLISEC);
		}
	} while (FUNC2(FUNC5() - start) < (timeout * MILLISEC));

	return (ENOENT);
}