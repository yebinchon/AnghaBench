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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curproc ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int*) ; 

__attribute__((used)) static int
FUNC4(const char *dataset, uint64_t zoned, cred_t *cr)
{
	int writable = 1;

	/*
	 * The dataset must be visible by this zone -- check this first
	 * so they don't see EPERM on something they shouldn't know about.
	 */
	if (!FUNC0(curproc) &&
	    !FUNC3(dataset, &writable))
		return (FUNC1(ENOENT));

	if (FUNC0(curproc)) {
		/*
		 * If the fs is zoned, only root can access it from the
		 * global zone.
		 */
		if (FUNC2(cr) && zoned)
			return (FUNC1(EPERM));
	} else {
		/*
		 * If we are in a local zone, the 'zoned' property must be set.
		 */
		if (!zoned)
			return (FUNC1(EPERM));

		/* must be writable by this zone */
		if (!writable)
			return (FUNC1(EPERM));
	}
	return (0);
}