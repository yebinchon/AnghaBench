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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  scalar_t__ vdev_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ VDEV_STATE_FAULTED ; 
 scalar_t__ VDEV_STATE_HEALTHY ; 
 int ZFS_ONLINE_EXPAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int,scalar_t__*) ; 

int
FUNC8(int argc, char **argv)
{
	int c, i;
	char *poolname;
	zpool_handle_t *zhp;
	int ret = 0;
	vdev_state_t newstate;
	int flags = 0;

	/* check options */
	while ((c = FUNC1(argc, argv, "e")) != -1) {
		switch (c) {
		case 'e':
			flags |= ZFS_ONLINE_EXPAND;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* get pool name and check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name\n"));
		FUNC4(B_FALSE);
	}
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC2("missing device name\n"));
		FUNC4(B_FALSE);
	}

	poolname = argv[0];

	if ((zhp = FUNC6(g_zfs, poolname)) == NULL)
		return (1);

	for (i = 1; i < argc; i++) {
		if (FUNC7(zhp, argv[i], flags, &newstate) == 0) {
			if (newstate != VDEV_STATE_HEALTHY) {
				(void) FUNC3(FUNC2("warning: device '%s' "
				    "onlined, but remains in faulted state\n"),
				    argv[i]);
				if (newstate == VDEV_STATE_FAULTED)
					(void) FUNC3(FUNC2("use 'zpool "
					    "clear' to restore a faulted "
					    "device\n"));
				else
					(void) FUNC3(FUNC2("use 'zpool "
					    "replace' to replace devices "
					    "that are no longer present\n"));
			}
		} else {
			ret = 1;
		}
	}

	FUNC5(zhp);

	return (ret);
}