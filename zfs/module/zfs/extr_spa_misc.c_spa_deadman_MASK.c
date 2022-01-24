#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int spa_sync_starttime; int /*<<< orphan*/  spa_deadman_tqid; int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_deadman_calls; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NANOSEC ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  system_delay_taskq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void (*) (void*),TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_deadman_checktime_ms ; 
 scalar_t__ zfs_deadman_enabled ; 

void
FUNC7(void *arg)
{
	spa_t *spa = arg;

	/* Disable the deadman if the pool is suspended. */
	if (FUNC3(spa))
		return;

	FUNC6("slow spa_sync: started %llu seconds ago, calls %llu",
	    (FUNC2() - spa->spa_sync_starttime) / NANOSEC,
	    ++spa->spa_deadman_calls);
	if (zfs_deadman_enabled)
		FUNC5(spa->spa_root_vdev, FTAG);

	spa->spa_deadman_tqid = FUNC4(system_delay_taskq,
	    spa_deadman, spa, TQ_SLEEP, FUNC1() +
	    FUNC0(zfs_deadman_checktime_ms));
}