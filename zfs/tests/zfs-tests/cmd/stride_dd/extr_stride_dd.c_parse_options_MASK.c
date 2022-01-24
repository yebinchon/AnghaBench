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
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ bsize ; 
 scalar_t__ count ; 
 char* execname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 char* ifile ; 
 char* ofile ; 
 scalar_t__ seek ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stride ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(int argc, char *argv[])
{
	int c;
	int errflag = 0;

	execname = argv[0];

	extern char *optarg;
	extern int optind, optopt;

	while ((c = FUNC2(argc, argv, ":b:c:i:o:s:k:")) != -1) {
		switch (c) {
			case 'b':
				bsize = FUNC0(optarg);
				break;

			case 'c':
				count = FUNC0(optarg);
				break;

			case 'i':
				ifile = optarg;
				break;

			case 'o':
				ofile = optarg;
				break;

			case 's':
				stride = FUNC0(optarg);
				break;

			case 'k':
				seek = FUNC0(optarg);
				break;

			case ':':
				(void) FUNC1(stderr,
				    "Option -%c requires an operand\n", optopt);
				errflag++;
				break;

			case '?':
			default:
				(void) FUNC1(stderr,
				    "Unrecognized option: -%c\n", optopt);
				errflag++;
				break;
		}

		if (errflag) {
			(void) FUNC3();
		}
	}

	if (bsize <= 0 || count <= 0 || stride <= 0 || ifile == NULL ||
	    ofile == NULL || seek < 0) {
		(void) FUNC1(stderr,
		    "Required parameter(s) missing or invalid.\n");
		(void) FUNC3();
	}
}