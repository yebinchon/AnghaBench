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
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 float FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int *argcp, char **argv, float *iv,
    unsigned long *cnt)
{
	float interval = 0;
	unsigned long count = 0;
	int argc = *argcp;

	/*
	 * Determine if the last argument is an integer or a pool name
	 */
	if (argc > 0 && FUNC4(argv[argc - 1])) {
		char *end;

		errno = 0;
		interval = FUNC2(argv[argc - 1], &end);

		if (*end == '\0' && errno == 0) {
			if (interval == 0) {
				(void) FUNC0(stderr, "%s", FUNC1("interval "
				    "cannot be zero\n"));
				FUNC3(B_FALSE);
			}
			/*
			 * Ignore the last parameter
			 */
			argc--;
		} else {
			/*
			 * If this is not a valid number, just plow on.  The
			 * user will get a more informative error message later
			 * on.
			 */
			interval = 0;
		}
	}

	/*
	 * If the last argument is also an integer, then we have both a count
	 * and an interval.
	 */
	if (argc > 0 && FUNC4(argv[argc - 1])) {
		char *end;

		errno = 0;
		count = interval;
		interval = FUNC2(argv[argc - 1], &end);

		if (*end == '\0' && errno == 0) {
			if (interval == 0) {
				(void) FUNC0(stderr, "%s", FUNC1("interval "
				    "cannot be zero\n"));
				FUNC3(B_FALSE);
			}

			/*
			 * Ignore the last parameter
			 */
			argc--;
		} else {
			interval = 0;
		}
	}

	*iv = interval;
	*cnt = count;
	*argcp = argc;
}