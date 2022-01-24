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
typedef  scalar_t__ zfs_deleg_who_type_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  idstr ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_ALLOW ; 
 scalar_t__ ZFS_DELEG_USER ; 
 scalar_t__ ZFS_DELEG_USER_SETS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,scalar_t__*) ; 

int
FUNC7(char *ddname, nvlist_t *nvp, cred_t *cr)
{
	nvpair_t *whopair = NULL;
	int error;
	char idstr[32];

	if ((error = FUNC2(ddname, ZFS_DELEG_PERM_ALLOW, cr)) != 0)
		return (error);

	(void) FUNC5(idstr, sizeof (idstr), "%lld",
	    (longlong_t)FUNC1(cr));

	while ((whopair = FUNC3(nvp, whopair))) {
		zfs_deleg_who_type_t type = FUNC4(whopair)[0];

		if (type != ZFS_DELEG_USER &&
		    type != ZFS_DELEG_USER_SETS)
			return (FUNC0(EPERM));

		if (FUNC6(idstr, &FUNC4(whopair)[3]) != 0)
			return (FUNC0(EPERM));
	}
	return (0);
}