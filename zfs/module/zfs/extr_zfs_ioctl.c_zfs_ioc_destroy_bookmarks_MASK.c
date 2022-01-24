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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXDEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(const char *poolname, nvlist_t *innvl,
    nvlist_t *outnvl)
{
	int error, poollen;

	poollen = FUNC5(poolname);
	for (nvpair_t *pair = FUNC2(innvl, NULL);
	    pair != NULL; pair = FUNC2(innvl, pair)) {
		const char *name = FUNC3(pair);
		const char *cp = FUNC4(name, '#');

		/*
		 * The bookmark name must contain an #, and the part after it
		 * must contain only valid characters.
		 */
		if (cp == NULL ||
		    FUNC7(cp + 1, NULL, NULL) != 0)
			return (FUNC0(EINVAL));

		/*
		 * The bookmark must be in the specified pool.
		 */
		if (FUNC6(name, poolname, poollen) != 0 ||
		    (name[poollen] != '/' && name[poollen] != '#'))
			return (FUNC0(EXDEV));
	}

	error = FUNC1(innvl, outnvl);
	return (error);
}