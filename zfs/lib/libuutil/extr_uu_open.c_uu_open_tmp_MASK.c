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
typedef  int /*<<< orphan*/  uint_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(const char *dir, uint_t uflags)
{
	int f;
	char *fname = FUNC5(PATH_MAX);

	if (fname == NULL)
		return (-1);

	for (;;) {
		(void) FUNC2(fname, PATH_MAX, "%s/uu%lld", dir, FUNC0());

		f = FUNC1(fname, O_CREAT | O_EXCL | O_RDWR, 0600);

		if (f >= 0 || errno != EEXIST)
			break;
	}

	if (f >= 0)
		(void) FUNC3(fname);

	FUNC4(fname);

	return (f);
}