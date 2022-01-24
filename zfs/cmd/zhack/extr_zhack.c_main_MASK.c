#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** path; int paths; void* cachefile; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int MAX_NUM_PATHS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ g_importargs ; 
 int /*<<< orphan*/  g_pool ; 
 int /*<<< orphan*/  g_readonly ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* optarg ; 
 int optind ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int,char**) ; 

int
FUNC10(int argc, char **argv)
{
	extern void FUNC0(void);

	char *path[MAX_NUM_PATHS];
	const char *subcommand;
	int rv = 0;
	int c;

	g_importargs.path = path;

	FUNC1(&argc, argv);
	FUNC0();

	while ((c = FUNC4(argc, argv, "+c:d:")) != -1) {
		switch (c) {
		case 'c':
			g_importargs.cachefile = optarg;
			break;
		case 'd':
			FUNC0(g_importargs.paths < MAX_NUM_PATHS);
			g_importargs.path[g_importargs.paths++] = optarg;
			break;
		default:
			FUNC8();
			break;
		}
	}

	argc -= optind;
	argv += optind;
	optind = 1;

	if (argc == 0) {
		(void) FUNC3(stderr, "error: no command specified\n");
		FUNC8();
	}

	subcommand = argv[0];

	if (FUNC7(subcommand, "feature") == 0) {
		rv = FUNC9(argc, argv);
	} else {
		(void) FUNC3(stderr, "error: unknown subcommand: %s\n",
		    subcommand);
		FUNC8();
	}

	if (!g_readonly && FUNC6(g_pool, NULL, B_TRUE, B_FALSE) != 0) {
		FUNC2(NULL, FTAG, "pool export failed; "
		    "changes may not be committed to disk\n");
	}

	FUNC5();

	return (rv);
}