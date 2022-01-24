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
typedef  int /*<<< orphan*/  vdev ;
struct stat {int dummy; } ;
typedef  int pool_state_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ENOENT ; 
 scalar_t__ ENOTTY ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDWR ; 
#define  POOL_STATE_ACTIVE 133 
#define  POOL_STATE_DESTROYED 132 
#define  POOL_STATE_EXPORTED 131 
#define  POOL_STATE_L2CACHE 130 
#define  POOL_STATE_POTENTIALLY_ACTIVE 129 
#define  POOL_STATE_SPARE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC4 (int,char**,char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int optopt ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (char*) ; 
 int FUNC15 (char*,char*,int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int,int*,char**,int /*<<< orphan*/ *) ; 
 char* FUNC18 (int) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int
FUNC20(int argc, char **argv)
{
	char vdev[MAXPATHLEN];
	char *name = NULL;
	struct stat st;
	int c, fd = -1, ret = 0;
	nvlist_t *config;
	pool_state_t state;
	boolean_t inuse = B_FALSE;
	boolean_t force = B_FALSE;

	/* check options */
	while ((c = FUNC4(argc, argv, "f")) != -1) {
		switch (c) {
		case 'f':
			force = B_TRUE;
			break;
		default:
			(void) FUNC2(stderr, FUNC5("invalid option '%c'\n"),
			    optopt);
			FUNC11(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* get vdev name */
	if (argc < 1) {
		(void) FUNC2(stderr, "%s", FUNC5("missing vdev name\n"));
		FUNC11(B_FALSE);
	}
	if (argc > 1) {
		(void) FUNC2(stderr, "%s", FUNC5("too many arguments\n"));
		FUNC11(B_FALSE);
	}

	/*
	 * Check if we were given absolute path and use it as is.
	 * Otherwise if the provided vdev name doesn't point to a file,
	 * try prepending expected disk paths and partition numbers.
	 */
	(void) FUNC10(vdev, argv[0], sizeof (vdev));
	if (vdev[0] != '/' && FUNC8(vdev, &st) != 0) {
		int error;

		error = FUNC15(argv[0], vdev, MAXPATHLEN);
		if (error == 0 && FUNC14(vdev)) {
			if (FUNC12(vdev, MAXPATHLEN) == -1)
				error = ENOENT;
		}

		if (error || (FUNC8(vdev, &st) != 0)) {
			(void) FUNC2(stderr, FUNC5(
			    "failed to find device %s, try specifying absolute "
			    "path instead\n"), argv[0]);
			return (1);
		}
	}

	if ((fd = FUNC7(vdev, O_RDWR)) < 0) {
		(void) FUNC2(stderr, FUNC5("failed to open %s: %s\n"),
		    vdev, FUNC9(errno));
		return (1);
	}

	/*
	 * Flush all dirty pages for the block device.  This should not be
	 * fatal when the device does not support BLKFLSBUF as would be the
	 * case for a file vdev.
	 */
	if ((FUNC13(fd) != 0) && (errno != ENOTTY))
		(void) FUNC2(stderr, FUNC5("failed to invalidate "
		    "cache for %s: %s\n"), vdev, FUNC9(errno));

	if (FUNC19(fd, &config, NULL) != 0) {
		(void) FUNC2(stderr,
		    FUNC5("failed to read label from %s\n"), vdev);
		ret = 1;
		goto errout;
	}
	FUNC6(config);

	ret = FUNC17(g_zfs, fd, &state, &name, &inuse);
	if (ret != 0) {
		(void) FUNC2(stderr,
		    FUNC5("failed to check state for %s\n"), vdev);
		ret = 1;
		goto errout;
	}

	if (!inuse)
		goto wipe_label;

	switch (state) {
	default:
	case POOL_STATE_ACTIVE:
	case POOL_STATE_SPARE:
	case POOL_STATE_L2CACHE:
		(void) FUNC2(stderr, FUNC5(
		    "%s is a member (%s) of pool \"%s\"\n"),
		    vdev, FUNC18(state), name);
		ret = 1;
		goto errout;

	case POOL_STATE_EXPORTED:
		if (force)
			break;
		(void) FUNC2(stderr, FUNC5(
		    "use '-f' to override the following error:\n"
		    "%s is a member of exported pool \"%s\"\n"),
		    vdev, name);
		ret = 1;
		goto errout;

	case POOL_STATE_POTENTIALLY_ACTIVE:
		if (force)
			break;
		(void) FUNC2(stderr, FUNC5(
		    "use '-f' to override the following error:\n"
		    "%s is a member of potentially active pool \"%s\"\n"),
		    vdev, name);
		ret = 1;
		goto errout;

	case POOL_STATE_DESTROYED:
		/* inuse should never be set for a destroyed pool */
		FUNC0(0);
		break;
	}

wipe_label:
	ret = FUNC16(fd);
	if (ret != 0) {
		(void) FUNC2(stderr,
		    FUNC5("failed to clear label for %s\n"), vdev);
	}

errout:
	FUNC3(name);
	(void) FUNC1(fd);

	return (ret);
}