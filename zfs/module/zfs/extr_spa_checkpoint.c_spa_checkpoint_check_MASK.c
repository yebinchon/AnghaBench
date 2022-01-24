#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sr_state; } ;
struct TYPE_8__ {scalar_t__ spa_checkpoint_txg; TYPE_1__ spa_removing_phys; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_9__ {TYPE_2__* dp_spa; } ;

/* Variables and functions */
 scalar_t__ DSS_SCANNING ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_POOL_CHECKPOINT ; 
 int /*<<< orphan*/  ZFS_ERR_CHECKPOINT_EXISTS ; 
 int /*<<< orphan*/  ZFS_ERR_DEVRM_IN_PROGRESS ; 
 int /*<<< orphan*/  ZFS_ERR_DISCARDING_CHECKPOINT ; 
 int /*<<< orphan*/  ZFS_ERR_VDEV_TOO_BIG ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(void *arg, dmu_tx_t *tx)
{
	spa_t *spa = FUNC1(tx)->dp_spa;

	if (!FUNC3(spa, SPA_FEATURE_POOL_CHECKPOINT))
		return (FUNC0(ENOTSUP));

	if (!FUNC4(spa))
		return (FUNC0(ZFS_ERR_VDEV_TOO_BIG));

	if (spa->spa_removing_phys.sr_state == DSS_SCANNING)
		return (FUNC0(ZFS_ERR_DEVRM_IN_PROGRESS));

	if (spa->spa_checkpoint_txg != 0)
		return (FUNC0(ZFS_ERR_CHECKPOINT_EXISTS));

	if (FUNC2(spa, SPA_FEATURE_POOL_CHECKPOINT))
		return (FUNC0(ZFS_ERR_DISCARDING_CHECKPOINT));

	return (0);
}