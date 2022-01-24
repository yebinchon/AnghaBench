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
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  POOL_SCAN_SCRUB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ztest_device_removal_active ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ztest_spa ; 

void
FUNC4(ztest_ds_t *zd, uint64_t id)
{
	spa_t *spa = ztest_spa;
	int error;

	/*
	 * Scrub in progress by device removal.
	 */
	if (ztest_device_removal_active)
		return;

	/*
	 * Start a scrub, wait a moment, then force a restart.
	 */
	(void) FUNC2(spa, POOL_SCAN_SCRUB);
	(void) FUNC1(NULL, 0, 100);

	error = FUNC3(spa);
	if (error == EBUSY)
		error = 0;
	FUNC0(error);
}