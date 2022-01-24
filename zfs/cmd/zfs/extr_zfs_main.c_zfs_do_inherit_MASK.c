#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_3__ {char* cb_propname; scalar_t__ cb_received; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ inherit_cbdata_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int ZFS_ITER_RECURSE ; 
 scalar_t__ ZFS_PROP_QUOTA ; 
 scalar_t__ ZFS_PROP_REFQUOTA ; 
 scalar_t__ ZFS_PROP_REFRESERVATION ; 
 scalar_t__ ZFS_PROP_RESERVATION ; 
 scalar_t__ ZFS_PROP_VERSION ; 
 scalar_t__ ZFS_PROP_VOLSIZE ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 scalar_t__ ZPROP_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  inherit_cb ; 
 int /*<<< orphan*/  inherit_recurse_cb ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int,char**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(int argc, char **argv)
{
	int c;
	zfs_prop_t prop;
	inherit_cbdata_t cb = { 0 };
	char *propname;
	int ret = 0;
	int flags = 0;
	boolean_t received = B_FALSE;

	/* check options */
	while ((c = FUNC1(argc, argv, "rS")) != -1) {
		switch (c) {
		case 'r':
			flags |= ZFS_ITER_RECURSE;
			break;
		case 'S':
			received = B_TRUE;
			break;
		case '?':
		default:
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC3(B_FALSE);
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1) {
		(void) FUNC0(stderr, "%s", FUNC2("missing property argument\n"));
		FUNC3(B_FALSE);
	}
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC2("missing dataset argument\n"));
		FUNC3(B_FALSE);
	}

	propname = argv[0];
	argc--;
	argv++;

	if ((prop = FUNC5(propname)) != ZPROP_INVAL) {
		if (FUNC7(prop)) {
			(void) FUNC0(stderr, FUNC2(
			    "%s property is read-only\n"),
			    propname);
			return (1);
		}
		if (!FUNC6(prop) && !received) {
			(void) FUNC0(stderr, FUNC2("'%s' property cannot "
			    "be inherited\n"), propname);
			if (prop == ZFS_PROP_QUOTA ||
			    prop == ZFS_PROP_RESERVATION ||
			    prop == ZFS_PROP_REFQUOTA ||
			    prop == ZFS_PROP_REFRESERVATION) {
				(void) FUNC0(stderr, FUNC2("use 'zfs set "
				    "%s=none' to clear\n"), propname);
				(void) FUNC0(stderr, FUNC2("use 'zfs "
				    "inherit -S %s' to revert to received "
				    "value\n"), propname);
			}
			return (1);
		}
		if (received && (prop == ZFS_PROP_VOLSIZE ||
		    prop == ZFS_PROP_VERSION)) {
			(void) FUNC0(stderr, FUNC2("'%s' property cannot "
			    "be reverted to a received value\n"), propname);
			return (1);
		}
	} else if (!FUNC8(propname)) {
		(void) FUNC0(stderr, FUNC2("invalid property '%s'\n"),
		    propname);
		FUNC3(B_FALSE);
	}

	cb.cb_propname = propname;
	cb.cb_received = received;

	if (flags & ZFS_ITER_RECURSE) {
		ret = FUNC4(argc, argv, flags, ZFS_TYPE_DATASET,
		    NULL, NULL, 0, inherit_recurse_cb, &cb);
	} else {
		ret = FUNC4(argc, argv, flags, ZFS_TYPE_DATASET,
		    NULL, NULL, 0, inherit_cb, &cb);
	}

	return (ret);
}