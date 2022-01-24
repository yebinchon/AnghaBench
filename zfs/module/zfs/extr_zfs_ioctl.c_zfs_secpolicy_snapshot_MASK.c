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
typedef  int /*<<< orphan*/  zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	nvlist_t *snaps;
	int error = 0;
	nvpair_t *pair;

	snaps = FUNC1(innvl, "snaps");

	for (pair = FUNC2(snaps, NULL); pair != NULL;
	    pair = FUNC2(snaps, pair)) {
		char *name = FUNC3(pair);
		char *atp = FUNC4(name, '@');

		if (atp == NULL) {
			error = FUNC0(EINVAL);
			break;
		}
		*atp = '\0';
		error = FUNC5(name, cr);
		*atp = '@';
		if (error != 0)
			break;
	}
	return (error);
}