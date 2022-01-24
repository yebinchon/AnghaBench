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
struct TYPE_3__ {scalar_t__ zpc_expected_projid; int zpc_op; void* zpc_dironly; void* zpc_keep_projid; void* zpc_newline; void* zpc_recursive; void* zpc_set_flag; } ;
typedef  TYPE_1__ zfs_project_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int UINT32_MAX ; 
 scalar_t__ ZFS_INVALID_PROJID ; 
#define  ZFS_PROJECT_OP_CHECK 131 
#define  ZFS_PROJECT_OP_CLEAR 130 
 int ZFS_PROJECT_OP_DEFAULT ; 
#define  ZFS_PROJECT_OP_LIST 129 
#define  ZFS_PROJECT_OP_SET 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (char*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(int argc, char **argv)
{
	zfs_project_control_t zpc = {
		.zpc_expected_projid = ZFS_INVALID_PROJID,
		.zpc_op = ZFS_PROJECT_OP_DEFAULT,
		.zpc_dironly = B_FALSE,
		.zpc_keep_projid = B_FALSE,
		.zpc_newline = B_TRUE,
		.zpc_recursive = B_FALSE,
		.zpc_set_flag = B_FALSE,
	};
	int ret = 0, c;

	if (argc < 2)
		FUNC5(B_FALSE);

	while ((c = FUNC2(argc, argv, "0Ccdkp:rs")) != -1) {
		switch (c) {
		case '0':
			zpc.zpc_newline = B_FALSE;
			break;
		case 'C':
			if (zpc.zpc_op != ZFS_PROJECT_OP_DEFAULT) {
				(void) FUNC1(stderr, "%s", FUNC3("cannot "
				    "specify '-C' '-c' '-s' together\n"));
				FUNC5(B_FALSE);
			}

			zpc.zpc_op = ZFS_PROJECT_OP_CLEAR;
			break;
		case 'c':
			if (zpc.zpc_op != ZFS_PROJECT_OP_DEFAULT) {
				(void) FUNC1(stderr, "%s", FUNC3("cannot "
				    "specify '-C' '-c' '-s' together\n"));
				FUNC5(B_FALSE);
			}

			zpc.zpc_op = ZFS_PROJECT_OP_CHECK;
			break;
		case 'd':
			zpc.zpc_dironly = B_TRUE;
			/* overwrite "-r" option */
			zpc.zpc_recursive = B_FALSE;
			break;
		case 'k':
			zpc.zpc_keep_projid = B_TRUE;
			break;
		case 'p': {
			char *endptr;

			errno = 0;
			zpc.zpc_expected_projid = FUNC4(optarg, &endptr, 0);
			if (errno != 0 || *endptr != '\0') {
				(void) FUNC1(stderr,
				    FUNC3("project ID must be less than "
				    "%u\n"), UINT32_MAX);
				FUNC5(B_FALSE);
			}
			if (zpc.zpc_expected_projid >= UINT32_MAX) {
				(void) FUNC1(stderr,
				    "%s", FUNC3("invalid project ID\n"));
				FUNC5(B_FALSE);
			}
			break;
		}
		case 'r':
			zpc.zpc_recursive = B_TRUE;
			/* overwrite "-d" option */
			zpc.zpc_dironly = B_FALSE;
			break;
		case 's':
			if (zpc.zpc_op != ZFS_PROJECT_OP_DEFAULT) {
				(void) FUNC1(stderr, "%s", FUNC3("cannot "
				    "specify '-C' '-c' '-s' together\n"));
				FUNC5(B_FALSE);
			}

			zpc.zpc_set_flag = B_TRUE;
			zpc.zpc_op = ZFS_PROJECT_OP_SET;
			break;
		default:
			(void) FUNC1(stderr, FUNC3("invalid option '%c'\n"),
			    optopt);
			FUNC5(B_FALSE);
		}
	}

	if (zpc.zpc_op == ZFS_PROJECT_OP_DEFAULT) {
		if (zpc.zpc_expected_projid != ZFS_INVALID_PROJID)
			zpc.zpc_op = ZFS_PROJECT_OP_SET;
		else
			zpc.zpc_op = ZFS_PROJECT_OP_LIST;
	}

	switch (zpc.zpc_op) {
	case ZFS_PROJECT_OP_LIST:
		if (zpc.zpc_keep_projid) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-k' is only valid together with '-C'\n"));
			FUNC5(B_FALSE);
		}
		if (!zpc.zpc_newline) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-0' is only valid together with '-c'\n"));
			FUNC5(B_FALSE);
		}
		break;
	case ZFS_PROJECT_OP_CHECK:
		if (zpc.zpc_keep_projid) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-k' is only valid together with '-C'\n"));
			FUNC5(B_FALSE);
		}
		break;
	case ZFS_PROJECT_OP_CLEAR:
		if (zpc.zpc_dironly) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-d' is useless together with '-C'\n"));
			FUNC5(B_FALSE);
		}
		if (!zpc.zpc_newline) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-0' is only valid together with '-c'\n"));
			FUNC5(B_FALSE);
		}
		if (zpc.zpc_expected_projid != ZFS_INVALID_PROJID) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-p' is useless together with '-C'\n"));
			FUNC5(B_FALSE);
		}
		break;
	case ZFS_PROJECT_OP_SET:
		if (zpc.zpc_dironly) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-d' is useless for set project ID and/or "
			    "inherit flag\n"));
			FUNC5(B_FALSE);
		}
		if (zpc.zpc_keep_projid) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-k' is only valid together with '-C'\n"));
			FUNC5(B_FALSE);
		}
		if (!zpc.zpc_newline) {
			(void) FUNC1(stderr,
			    "%s", FUNC3("'-0' is only valid together with '-c'\n"));
			FUNC5(B_FALSE);
		}
		break;
	default:
		FUNC0(0);
		break;
	}

	argv += optind;
	argc -= optind;
	if (argc == 0) {
		(void) FUNC1(stderr,
		    "%s", FUNC3("missing file or directory target(s)\n"));
		FUNC5(B_FALSE);
	}

	for (int i = 0; i < argc; i++) {
		int err;

		err = FUNC6(argv[i], &zpc);
		if (err && !ret)
			ret = err;
	}

	return (ret);
}