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
typedef  int /*<<< orphan*/  vdev_aux_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  VDEV_AUX_EXTERNAL ; 
 int /*<<< orphan*/  VDEV_AUX_EXTERNAL_PERSIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

int
FUNC9(int argc, char **argv)
{
	int c, i;
	char *poolname;
	zpool_handle_t *zhp;
	int ret = 0;
	boolean_t istmp = B_FALSE;
	boolean_t fault = B_FALSE;

	/* check options */
	while ((c = FUNC1(argc, argv, "ft")) != -1) {
		switch (c) {
		case 'f':
			fault = B_TRUE;
			break;
		case 't':
			istmp = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC3(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* get pool name and check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing pool name\n"));
		FUNC3(B_FALSE);
	}
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC2("missing device name\n"));
		FUNC3(B_FALSE);
	}

	poolname = argv[0];

	if ((zhp = FUNC5(g_zfs, poolname)) == NULL)
		return (1);

	for (i = 1; i < argc; i++) {
		if (fault) {
			uint64_t guid = FUNC8(zhp, argv[i]);
			vdev_aux_t aux;
			if (istmp == B_FALSE) {
				/* Force the fault to persist across imports */
				aux = VDEV_AUX_EXTERNAL_PERSIST;
			} else {
				aux = VDEV_AUX_EXTERNAL;
			}

			if (guid == 0 || FUNC6(zhp, guid, aux) != 0)
				ret = 1;
		} else {
			if (FUNC7(zhp, argv[i], istmp) != 0)
				ret = 1;
		}
	}

	FUNC4(zhp);

	return (ret);
}