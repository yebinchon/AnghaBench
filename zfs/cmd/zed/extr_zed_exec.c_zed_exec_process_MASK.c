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
typedef  int /*<<< orphan*/  zed_strings_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 char** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(uint64_t eid, const char *class, const char *subclass,
    const char *dir, zed_strings_t *zedlets, zed_strings_t *envs, int zfd)
{
	const char *class_strings[4];
	const char *allclass = "all";
	const char **csp;
	const char *z;
	char **e;
	int n;

	if (!dir || !zedlets || !envs || zfd < 0)
		return (-1);

	csp = class_strings;

	if (class)
		*csp++ = class;

	if (subclass)
		*csp++ = subclass;

	if (allclass)
		*csp++ = allclass;

	*csp = NULL;

	e = FUNC0(envs);

	for (z = FUNC6(zedlets); z; z = FUNC7(zedlets)) {
		for (csp = class_strings; *csp; csp++) {
			n = FUNC4(*csp);
			if ((FUNC5(z, *csp, n) == 0) && !FUNC3(z[n]))
				FUNC1(eid, dir, z, e, zfd);
		}
	}
	FUNC2(e);
	return (0);
}