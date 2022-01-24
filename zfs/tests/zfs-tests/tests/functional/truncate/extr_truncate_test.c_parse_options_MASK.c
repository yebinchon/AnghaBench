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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errflag ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fsize ; 
 int /*<<< orphan*/  ftruncflag ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int argc, char *argv[])
{
	int c;
	extern char *optarg;
	extern int optind, optopt;

	while ((c = FUNC2(argc, argv, "s:f")) != -1) {
		switch (c) {
			case 's':
				fsize = FUNC0(optarg);
				break;
			case 'f':
				ftruncflag++;
				break;
			case ':':
				(void) FUNC1(stderr,
				    "Option -%c requires an operand\n", optopt);
				errflag++;
				break;
		}
		if (errflag) {
			(void) FUNC3(argv[0]);
		}
	}

	if (argc <= optind) {
		(void) FUNC1(stderr, "No filename specified\n");
		FUNC3(argv[0]);
	}
	filename = argv[optind];
}