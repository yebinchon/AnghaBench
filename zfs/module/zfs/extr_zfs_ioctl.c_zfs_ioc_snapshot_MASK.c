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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  EXDEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_VERSION_SNAP_PROPS ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_USERPROP ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(const char *poolname, nvlist_t *innvl, nvlist_t *outnvl)
{
	nvlist_t *snaps;
	nvlist_t *props = NULL;
	int error, poollen;
	nvpair_t *pair;

	(void) FUNC5(innvl, "props", &props);
	if (!FUNC4(props) &&
	    FUNC13(poolname, SPA_VERSION_SNAP_PROPS))
		return (FUNC1(ENOTSUP));
	if ((error = FUNC11(props)) != 0)
		return (error);

	snaps = FUNC3(innvl, "snaps");
	poollen = FUNC9(poolname);
	for (pair = FUNC6(snaps, NULL); pair != NULL;
	    pair = FUNC6(snaps, pair)) {
		const char *name = FUNC7(pair);
		char *cp = FUNC8(name, '@');

		/*
		 * The snap name must contain an @, and the part after it must
		 * contain only valid characters.
		 */
		if (cp == NULL ||
		    FUNC12(cp + 1, NULL, NULL) != 0)
			return (FUNC1(EINVAL));

		/*
		 * The snap must be in the specified pool.
		 */
		if (FUNC10(name, poolname, poollen) != 0 ||
		    (name[poollen] != '/' && name[poollen] != '@'))
			return (FUNC1(EXDEV));

		/*
		 * Check for permission to set the properties on the fs.
		 */
		if (!FUNC4(props)) {
			*cp = '\0';
			error = FUNC14(name,
			    ZFS_DELEG_PERM_USERPROP, FUNC0());
			*cp = '@';
			if (error != 0)
				return (error);
		}

		/* This must be the only snap of this fs. */
		for (nvpair_t *pair2 = FUNC6(snaps, pair);
		    pair2 != NULL; pair2 = FUNC6(snaps, pair2)) {
			if (FUNC10(name, FUNC7(pair2), cp - name + 1)
			    == 0) {
				return (FUNC1(EXDEV));
			}
		}
	}

	error = FUNC2(snaps, props, outnvl);

	return (error);
}