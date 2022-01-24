#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int verbose; int scripted; int follow; int clear; char* poolname; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ev_opts_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ZFS_TYPE_POOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 

int
FUNC8(int argc, char **argv)
{
	ev_opts_t opts = { 0 };
	int ret;
	int c;

	/* check options */
	while ((c = FUNC1(argc, argv, "vHfc")) != -1) {
		switch (c) {
		case 'v':
			opts.verbose = 1;
			break;
		case 'H':
			opts.scripted = 1;
			break;
		case 'f':
			opts.follow = 1;
			break;
		case 'c':
			opts.clear = 1;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}
	argc -= optind;
	argv += optind;

	if (argc > 1) {
		(void) FUNC0(stderr, "%s", FUNC2("too many arguments\n"));
		FUNC4(B_FALSE);
	} else if (argc == 1) {
		(void) FUNC3(opts.poolname, argv[0], sizeof (opts.poolname));
		if (!FUNC5(opts.poolname, ZFS_TYPE_POOL)) {
			(void) FUNC0(stderr,
			    FUNC2("invalid pool name '%s'\n"), opts.poolname);
			FUNC4(B_FALSE);
		}
	}

	if ((argc == 1 || opts.verbose || opts.scripted || opts.follow) &&
	    opts.clear) {
		(void) FUNC0(stderr,
		    "%s", FUNC2("invalid options combined with -c\n"));
		FUNC4(B_FALSE);
	}

	if (opts.clear)
		ret = FUNC6(&opts);
	else
		ret = FUNC7(&opts);

	return (ret);
}