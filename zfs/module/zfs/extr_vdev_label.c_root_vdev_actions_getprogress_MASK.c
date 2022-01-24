#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  prs ;
typedef  int /*<<< orphan*/  pool_scan_stat_t ;
typedef  int /*<<< orphan*/  pool_removal_stat_t ;
typedef  int /*<<< orphan*/  pool_checkpoint_stat_t ;
typedef  int /*<<< orphan*/  pcs ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_CHECKPOINT_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_REMOVAL_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SCAN_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(vdev_t *vd, nvlist_t *nvl)
{
	spa_t *spa = vd->vdev_spa;

	if (vd != spa->spa_root_vdev)
		return;

	/* provide either current or previous scan information */
	pool_scan_stat_t ps;
	if (FUNC3(spa, &ps) == 0) {
		FUNC0(nvl,
		    ZPOOL_CONFIG_SCAN_STATS, (uint64_t *)&ps,
		    sizeof (pool_scan_stat_t) / sizeof (uint64_t));
	}

	pool_removal_stat_t prs;
	if (FUNC2(spa, &prs) == 0) {
		FUNC0(nvl,
		    ZPOOL_CONFIG_REMOVAL_STATS, (uint64_t *)&prs,
		    sizeof (prs) / sizeof (uint64_t));
	}

	pool_checkpoint_stat_t pcs;
	if (FUNC1(spa, &pcs) == 0) {
		FUNC0(nvl,
		    ZPOOL_CONFIG_CHECKPOINT_STATS, (uint64_t *)&pcs,
		    sizeof (pcs) / sizeof (uint64_t));
	}
}