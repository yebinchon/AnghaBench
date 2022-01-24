#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ spa_bootfs; scalar_t__ spa_pool_props_object; int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(spa_t *spa, uint64_t dsobj, dmu_tx_t *tx)
{
	if (spa->spa_bootfs == dsobj && spa->spa_pool_props_object != 0) {
		FUNC0(FUNC1(spa->spa_meta_objset,
		    spa->spa_pool_props_object,
		    FUNC2(ZPOOL_PROP_BOOTFS), tx) == 0);
		spa->spa_bootfs = 0;
	}
}