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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	int poollen;
	nvlist_t *snaps;
	nvpair_t *pair;
	boolean_t defer;
	spa_t *spa;

	snaps = FUNC2(innvl, "snaps");
	defer = FUNC3(innvl, "defer");

	poollen = FUNC8(poolname);
	for (pair = FUNC4(snaps, NULL); pair != NULL;
	    pair = FUNC4(snaps, pair)) {
		const char *name = FUNC5(pair);

		/*
		 * The snap must be in the specified pool to prevent the
		 * invalid removal of zvol minors below.
		 */
		if (FUNC9(name, poolname, poollen) != 0 ||
		    (name[poollen] != '/' && name[poollen] != '@'))
			return (FUNC0(EXDEV));

		FUNC10(FUNC5(pair));
		if (FUNC7(name, &spa, FTAG) == 0) {
			FUNC11(spa, name, B_TRUE);
			FUNC6(spa, FTAG);
		}
	}

	return (FUNC1(snaps, defer, outnvl));
}