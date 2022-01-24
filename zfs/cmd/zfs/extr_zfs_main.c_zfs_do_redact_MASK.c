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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
#define  E2BIG 134 
#define  EALREADY 133 
#define  EEXIST 132 
#define  EINVAL 131 
#define  ENAMETOOLONG 130 
#define  ENOENT 129 
#define  ENOTSUP 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(int argc, char **argv)
{
	char *snap = NULL;
	char *bookname = NULL;
	char **rsnaps = NULL;
	int numrsnaps = 0;
	argv++;
	argc--;
	if (argc < 3) {
		(void) FUNC3(stderr, "%s", FUNC4("too few arguments\n"));
		FUNC7(B_FALSE);
	}

	snap = argv[0];
	bookname = argv[1];
	rsnaps = argv + 2;
	numrsnaps = argc - 2;

	nvlist_t *rsnapnv = FUNC1();

	for (int i = 0; i < numrsnaps; i++) {
		FUNC0(rsnapnv, rsnaps[i]);
	}

	int err = FUNC5(snap, bookname, rsnapnv);
	FUNC2(rsnapnv);

	switch (err) {
	case 0:
		break;
	case ENOENT:
		(void) FUNC3(stderr,
		    FUNC4("provided snapshot %s does not exist\n"), snap);
		break;
	case EEXIST:
		(void) FUNC3(stderr, FUNC4("specified redaction bookmark "
		    "(%s) provided already exists\n"), bookname);
		break;
	case ENAMETOOLONG:
		(void) FUNC3(stderr, "%s", FUNC4("provided bookmark name cannot "
		    "be used, final name would be too long\n"));
		break;
	case E2BIG:
		(void) FUNC3(stderr, "%s", FUNC4("too many redaction snapshots "
		    "specified\n"));
		break;
	case EINVAL:
		(void) FUNC3(stderr, "%s", FUNC4("redaction snapshot must be "
		    "descendent of snapshot being redacted\n"));
		break;
	case EALREADY:
		(void) FUNC3(stderr, "%s", FUNC4("attempted to redact redacted "
		    "dataset or with respect to redacted dataset\n"));
		break;
	case ENOTSUP:
		(void) FUNC3(stderr, "%s", FUNC4("redaction bookmarks feature "
		    "not enabled\n"));
		break;
	default:
		(void) FUNC3(stderr, FUNC4("internal error: %s\n"),
		    FUNC6(errno));
	}

	return (err);
}