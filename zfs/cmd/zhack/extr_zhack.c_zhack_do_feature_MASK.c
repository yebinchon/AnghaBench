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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 

__attribute__((used)) static int
FUNC6(int argc, char **argv)
{
	char *subcommand;

	argc--;
	argv++;
	if (argc == 0) {
		(void) FUNC0(stderr,
		    "error: no feature operation specified\n");
		FUNC2();
	}

	subcommand = argv[0];
	if (FUNC1(subcommand, "stat") == 0) {
		FUNC5(argc, argv);
	} else if (FUNC1(subcommand, "enable") == 0) {
		FUNC3(argc, argv);
	} else if (FUNC1(subcommand, "ref") == 0) {
		FUNC4(argc, argv);
	} else {
		(void) FUNC0(stderr, "error: unknown subcommand: %s\n",
		    subcommand);
		FUNC2();
	}

	return (0);
}