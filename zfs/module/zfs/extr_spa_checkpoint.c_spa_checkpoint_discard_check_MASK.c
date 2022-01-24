#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ spa_checkpoint_txg; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_6__ {TYPE_1__* dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_ZPOOL_CHECKPOINT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_ERR_DISCARDING_CHECKPOINT ; 
 int /*<<< orphan*/  ZFS_ERR_NO_CHECKPOINT ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *arg, dmu_tx_t *tx)
{
	spa_t *spa = FUNC2(tx)->dp_spa;

	if (!FUNC3(spa, SPA_FEATURE_POOL_CHECKPOINT))
		return (FUNC0(ZFS_ERR_NO_CHECKPOINT));

	if (spa->spa_checkpoint_txg == 0)
		return (FUNC0(ZFS_ERR_DISCARDING_CHECKPOINT));

	FUNC1(FUNC5(FUNC4(spa),
	    DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_ZPOOL_CHECKPOINT));

	return (0);
}