#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_11__ {size_t txg; int /*<<< orphan*/  ndirty; int /*<<< orphan*/  vs1; } ;
typedef  TYPE_1__ txg_stat_t ;
struct TYPE_12__ {int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_13__ {int /*<<< orphan*/ * dp_dirty_pertxg; } ;
typedef  TYPE_3__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  TXG_STATE_WAIT_FOR_SYNC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_txg_history ; 

txg_stat_t *
FUNC6(spa_t *spa, uint64_t txg, dsl_pool_t *dp)
{
	txg_stat_t *ts;

	if (zfs_txg_history == 0)
		return (NULL);

	ts = FUNC1(sizeof (txg_stat_t), KM_SLEEP);

	FUNC2(spa, SCL_CONFIG, FTAG, RW_READER);
	FUNC5(spa->spa_root_vdev, &ts->vs1);
	FUNC3(spa, SCL_CONFIG, FTAG);

	ts->txg = txg;
	ts->ndirty = dp->dp_dirty_pertxg[txg & TXG_MASK];

	FUNC4(spa, txg, TXG_STATE_WAIT_FOR_SYNC, FUNC0());

	return (ts);
}