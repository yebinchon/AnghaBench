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
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(nvlist_t *nvp)
{
	nvpair_t *who, *perm_name;
	nvlist_t *perms;
	int error;

	if (nvp == NULL)
		return (-1);

	who = FUNC1(nvp, NULL);
	if (who == NULL)
		return (-1);

	do {
		if (FUNC4(FUNC2(who)))
			return (-1);

		error = FUNC0(nvp, FUNC2(who), &perms);

		if (error && error != ENOENT)
			return (-1);
		if (error == ENOENT)
			continue;

		perm_name = FUNC1(perms, NULL);
		if (perm_name == NULL) {
			return (-1);
		}
		do {
			error = FUNC3(
			    FUNC2(perm_name));
			if (error)
				return (-1);
		} while ((perm_name = FUNC1(perms, perm_name))
		    != NULL);
	} while ((who = FUNC1(nvp, who)) != NULL);
	return (0);
}