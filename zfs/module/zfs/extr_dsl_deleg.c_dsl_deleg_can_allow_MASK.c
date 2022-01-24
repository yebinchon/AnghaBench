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
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char const* ZFS_DELEG_PERM_ALLOW ; 
 int FUNC2 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

int
FUNC7(char *ddname, nvlist_t *nvp, cred_t *cr)
{
	nvpair_t *whopair = NULL;
	int error;

	if ((error = FUNC2(ddname, ZFS_DELEG_PERM_ALLOW, cr)) != 0)
		return (error);

	while ((whopair = FUNC3(nvp, whopair))) {
		nvlist_t *perms;
		nvpair_t *permpair = NULL;

		FUNC1(FUNC5(whopair, &perms) == 0);

		while ((permpair = FUNC3(perms, permpair))) {
			const char *perm = FUNC4(permpair);

			if (FUNC6(perm, ZFS_DELEG_PERM_ALLOW) == 0)
				return (FUNC0(EPERM));

			if ((error = FUNC2(ddname, perm, cr)) != 0)
				return (error);
		}
	}
	return (0);
}