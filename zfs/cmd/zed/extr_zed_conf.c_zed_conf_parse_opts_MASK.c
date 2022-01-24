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
struct zed_conf {int do_verbose; int do_force; int do_foreground; int do_memlock; int do_zero; int /*<<< orphan*/  state_file; int /*<<< orphan*/  path; int /*<<< orphan*/  pid_file; int /*<<< orphan*/  zedlet_dir; int /*<<< orphan*/  conf_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char) ; 
 int FUNC5 (int,char**,char const* const) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ opterr ; 
 char optopt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(struct zed_conf *zcp, int argc, char **argv)
{
	const char * const opts = ":hLVc:d:p:P:s:vfFMZ";
	int opt;

	if (!zcp || !argv || !argv[0])
		FUNC6("Failed to parse options: Internal error");

	opterr = 0;			/* suppress default getopt err msgs */

	while ((opt = FUNC5(argc, argv, opts)) != -1) {
		switch (opt) {
		case 'h':
			FUNC0(argv[0], EXIT_SUCCESS);
			break;
		case 'L':
			FUNC1();
			break;
		case 'V':
			FUNC2();
			break;
		case 'c':
			FUNC3(&zcp->conf_file, optarg);
			break;
		case 'd':
			FUNC3(&zcp->zedlet_dir, optarg);
			break;
		case 'p':
			FUNC3(&zcp->pid_file, optarg);
			break;
		case 'P':
			FUNC3(&zcp->path, optarg);
			break;
		case 's':
			FUNC3(&zcp->state_file, optarg);
			break;
		case 'v':
			zcp->do_verbose = 1;
			break;
		case 'f':
			zcp->do_force = 1;
			break;
		case 'F':
			zcp->do_foreground = 1;
			break;
		case 'M':
			zcp->do_memlock = 1;
			break;
		case 'Z':
			zcp->do_zero = 1;
			break;
		case '?':
		default:
			if (optopt == '?')
				FUNC0(argv[0], EXIT_SUCCESS);

			FUNC4(stderr, "%s: %s '-%c'\n\n", argv[0],
			    "Invalid option", optopt);
			FUNC0(argv[0], EXIT_FAILURE);
			break;
		}
	}
}