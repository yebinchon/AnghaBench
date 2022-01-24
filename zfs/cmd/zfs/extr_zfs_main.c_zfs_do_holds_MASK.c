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
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {char const* cb_snapname; int /*<<< orphan*/  cb_max_taglen; int /*<<< orphan*/  cb_max_namelen; int /*<<< orphan*/ ** cb_nvlp; scalar_t__ cb_recursive; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ holds_cbdata_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int ZFS_ITER_RECURSE ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_SNAPSHOT ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char**,char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  holds_callback ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int,char**,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(int argc, char **argv)
{
	int errors = 0;
	int c;
	int i;
	boolean_t scripted = B_FALSE;
	boolean_t recursive = B_FALSE;
	const char *opts = "rH";
	nvlist_t *nvl;

	int types = ZFS_TYPE_SNAPSHOT;
	holds_cbdata_t cb = { 0 };

	int limit = 0;
	int ret = 0;
	int flags = 0;

	/* check options */
	while ((c = FUNC1(argc, argv, opts)) != -1) {
		switch (c) {
		case 'r':
			recursive = B_TRUE;
			break;
		case 'H':
			scripted = B_TRUE;
			break;
		case '?':
			(void) FUNC0(stderr, FUNC2("invalid option '%c'\n"),
			    optopt);
			FUNC9(B_FALSE);
		}
	}

	if (recursive) {
		types |= ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME;
		flags |= ZFS_ITER_RECURSE;
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1)
		FUNC9(B_FALSE);

	if (FUNC4(&nvl, NV_UNIQUE_NAME, 0) != 0)
		FUNC3();

	for (i = 0; i < argc; ++i) {
		char *snapshot = argv[i];
		const char *delim;
		const char *snapname;

		delim = FUNC8(snapshot, '@');
		if (delim == NULL) {
			(void) FUNC0(stderr,
			    FUNC2("'%s' is not a snapshot\n"), snapshot);
			++errors;
			continue;
		}
		snapname = delim + 1;
		if (recursive)
			snapshot[delim - snapshot] = '\0';

		cb.cb_recursive = recursive;
		cb.cb_snapname = snapname;
		cb.cb_nvlp = &nvl;

		/*
		 *  1. collect holds data, set format options
		 */
		ret = FUNC10(argc, argv, flags, types, NULL, NULL, limit,
		    holds_callback, &cb);
		if (ret != 0)
			++errors;
	}

	/*
	 *  2. print holds data
	 */
	FUNC7(scripted, cb.cb_max_namelen, cb.cb_max_taglen, nvl);

	if (FUNC5(nvl))
		(void) FUNC0(stderr, "%s", FUNC2("no datasets available\n"));

	FUNC6(nvl);

	return (0 != errors);
}