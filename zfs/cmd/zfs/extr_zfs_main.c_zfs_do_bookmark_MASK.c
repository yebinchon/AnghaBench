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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  snapname ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  bookname ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
#define  EEXIST 133 
#define  EINVAL 132 
#define  ENOENT 131 
#define  ENOSPC 130 
#define  ENOTSUP 129 
#define  EXDEV 128 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 int FUNC5 (int,char**,char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC16(int argc, char **argv)
{
	char snapname[ZFS_MAX_DATASET_NAME_LEN];
	char bookname[ZFS_MAX_DATASET_NAME_LEN];
	zfs_handle_t *zhp;
	nvlist_t *nvl;
	int ret = 0;
	int c;

	/* check options */
	while ((c = FUNC5(argc, argv, "")) != -1) {
		switch (c) {
		case '?':
			(void) FUNC4(stderr,
			    FUNC6("invalid option '%c'\n"), optopt);
			goto usage;
		}
	}

	argc -= optind;
	argv += optind;

	/* check number of arguments */
	if (argc < 1) {
		(void) FUNC4(stderr, "%s", FUNC6("missing snapshot argument\n"));
		goto usage;
	}
	if (argc < 2) {
		(void) FUNC4(stderr, "%s", FUNC6("missing bookmark argument\n"));
		goto usage;
	}

	if (FUNC9(argv[0], '@') == NULL) {
		(void) FUNC4(stderr,
		    FUNC6("invalid snapshot name '%s': "
		    "must contain a '@'\n"), argv[0]);
		goto usage;
	}
	if (FUNC9(argv[1], '#') == NULL) {
		(void) FUNC4(stderr,
		    FUNC6("invalid bookmark name '%s': "
		    "must contain a '#'\n"), argv[1]);
		goto usage;
	}

	if (argv[0][0] == '@') {
		/*
		 * Snapshot name begins with @.
		 * Default to same fs as bookmark.
		 */
		(void) FUNC11(snapname, argv[1], sizeof (snapname));
		*FUNC9(snapname, '#') = '\0';
		(void) FUNC10(snapname, argv[0], sizeof (snapname));
	} else {
		(void) FUNC11(snapname, argv[0], sizeof (snapname));
	}
	if (argv[1][0] == '#') {
		/*
		 * Bookmark name begins with #.
		 * Default to same fs as snapshot.
		 */
		(void) FUNC11(bookname, argv[0], sizeof (bookname));
		*FUNC9(bookname, '@') = '\0';
		(void) FUNC10(bookname, argv[1], sizeof (bookname));
	} else {
		(void) FUNC11(bookname, argv[1], sizeof (bookname));
	}

	zhp = FUNC14(g_zfs, snapname, ZFS_TYPE_SNAPSHOT);
	if (zhp == NULL)
		goto usage;
	FUNC13(zhp);


	nvl = FUNC2();
	FUNC1(nvl, bookname, snapname);
	ret = FUNC7(nvl, NULL);
	FUNC3(nvl);

	if (ret != 0) {
		const char *err_msg = NULL;
		char errbuf[1024];

		(void) FUNC8(errbuf, sizeof (errbuf),
		    FUNC0(TEXT_DOMAIN,
		    "cannot create bookmark '%s'"), bookname);

		switch (ret) {
		case EXDEV:
			err_msg = "bookmark is in a different pool";
			break;
		case EEXIST:
			err_msg = "bookmark exists";
			break;
		case EINVAL:
			err_msg = "invalid argument";
			break;
		case ENOTSUP:
			err_msg = "bookmark feature not enabled";
			break;
		case ENOSPC:
			err_msg = "out of space";
			break;
		case ENOENT:
			err_msg = "dataset does not exist";
			break;
		default:
			(void) FUNC15(g_zfs, ret, errbuf);
			break;
		}
		if (err_msg != NULL) {
			(void) FUNC4(stderr, "%s: %s\n", errbuf,
			    FUNC0(TEXT_DOMAIN, err_msg));
		}
	}

	return (ret != 0);

usage:
	FUNC12(B_FALSE);
	return (-1);
}