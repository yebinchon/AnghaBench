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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static char *FUNC5(void)
{
	int n = 0;
	int t = 512;
	char *s = NULL;

	for (;;) {
		char *ss = FUNC4(s, t);
		if (!ss) {
			FUNC3(s);
			FUNC1(stderr, "cannot allocate storage for stdin contents\n");
			return NULL;
		}
		s = ss;
		n += FUNC2(s + n, 1, t - n - 1, stdin);
		if (n < t - 1)
			break;
		t *= 2;
	}

	if (FUNC0(stdin)) {
		FUNC3(s);
		FUNC1(stderr, "error reading stdin\n");
		return NULL;
	}

	s[n] = 0;
	return s;
}