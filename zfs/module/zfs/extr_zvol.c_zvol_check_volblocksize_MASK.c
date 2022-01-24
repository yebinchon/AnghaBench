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
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDOM ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_LARGE_BLOCKS ; 
 scalar_t__ SPA_MAXBLOCKSIZE ; 
 scalar_t__ SPA_MINBLOCKSIZE ; 
 scalar_t__ SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ zfs_max_recordsize ; 

int
FUNC5(const char *name, uint64_t volblocksize)
{
	/* Record sizes above 128k need the feature to be enabled */
	if (volblocksize > SPA_OLD_MAXBLOCKSIZE) {
		spa_t *spa;
		int error;

		if ((error = FUNC4(name, &spa, FTAG)) != 0)
			return (error);

		if (!FUNC3(spa, SPA_FEATURE_LARGE_BLOCKS)) {
			FUNC2(spa, FTAG);
			return (FUNC1(ENOTSUP));
		}

		/*
		 * We don't allow setting the property above 1MB,
		 * unless the tunable has been changed.
		 */
		if (volblocksize > zfs_max_recordsize)
			return (FUNC1(EDOM));

		FUNC2(spa, FTAG);
	}

	if (volblocksize < SPA_MINBLOCKSIZE ||
	    volblocksize > SPA_MAXBLOCKSIZE ||
	    !FUNC0(volblocksize))
		return (FUNC1(EDOM));

	return (0);
}