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

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int ECKSUM ; 
 int /*<<< orphan*/  POOL_SCAN_SCRUB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_pool_scrubbed ; 

__attribute__((used)) static int
FUNC5(spa_t *spa)
{
	int error = FUNC3(spa, POOL_SCAN_SCRUB);
	if (error)
		return (error);

	while (FUNC0(FUNC1(spa)))
		FUNC4(FUNC1(spa), 0);

	if (FUNC2(spa) > 0)
		return (ECKSUM);

	ztest_pool_scrubbed = B_TRUE;

	return (0);
}