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
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_ALLOCATION_CLASSES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(spa_t *spa, dmu_tx_t *tx)
{
	/*
	 * We bump the feature refcount for each special vdev added to the pool
	 */
	FUNC0(FUNC2(spa, SPA_FEATURE_ALLOCATION_CLASSES));
	FUNC1(spa, SPA_FEATURE_ALLOCATION_CLASSES, tx);
}