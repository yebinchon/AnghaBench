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
struct TYPE_3__ {void* hardforce; void* force; } ;
typedef  TYPE_1__ export_cbdata_t ;
typedef  void* boolean_t ;

/* Variables and functions */
 void* B_FALSE ; 
 void* B_TRUE ; 
 int FUNC0 (int,char**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  zpool_export_one ; 

int
FUNC5(int argc, char **argv)
{
	export_cbdata_t cb;
	boolean_t do_all = B_FALSE;
	boolean_t force = B_FALSE;
	boolean_t hardforce = B_FALSE;
	int c, ret;

	/* check options */
	while ((c = FUNC2(argc, argv, "afF")) != -1) {
		switch (c) {
		case 'a':
			do_all = B_TRUE;
			break;
		case 'f':
			force = B_TRUE;
			break;
		case 'F':
			hardforce = B_TRUE;
			break;
		case '?':
			(void) FUNC1(stderr, FUNC3("invalid option '%c'\n"),
			    optopt);
			FUNC4(B_FALSE);
		}
	}

	cb.force = force;
	cb.hardforce = hardforce;
	argc -= optind;
	argv += optind;

	if (do_all) {
		if (argc != 0) {
			(void) FUNC1(stderr, "%s", FUNC3("too many arguments\n"));
			FUNC4(B_FALSE);
		}

		return (FUNC0(argc, argv, B_TRUE, NULL,
		    zpool_export_one, &cb));
	}

	/* check arguments */
	if (argc < 1) {
		(void) FUNC1(stderr, "%s", FUNC3("missing pool argument\n"));
		FUNC4(B_FALSE);
	}

	ret = FUNC0(argc, argv, B_TRUE, NULL, zpool_export_one, &cb);

	return (ret);
}