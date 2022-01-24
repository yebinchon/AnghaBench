#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tq_lock_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int TASKQ_DYNAMIC ; 
 int TASKQ_PREPOPULATE ; 
 int /*<<< orphan*/  TQ_LOCK_DYNAMIC ; 
 int /*<<< orphan*/  boot_ncpus ; 
 TYPE_1__* dynamic_taskq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maxclsyspri ; 
 int /*<<< orphan*/ * system_delay_taskq ; 
 int /*<<< orphan*/ * system_taskq ; 
 void* FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskq_tsd ; 
 int /*<<< orphan*/  tq_list_sem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(void)
{
	FUNC1(&tq_list_sem);
	FUNC4(&taskq_tsd, NULL);

	system_taskq = FUNC2("spl_system_taskq", FUNC0(boot_ncpus, 64),
	    maxclsyspri, boot_ncpus, INT_MAX, TASKQ_PREPOPULATE|TASKQ_DYNAMIC);
	if (system_taskq == NULL)
		return (1);

	system_delay_taskq = FUNC2("spl_delay_taskq", FUNC0(boot_ncpus, 4),
	    maxclsyspri, boot_ncpus, INT_MAX, TASKQ_PREPOPULATE|TASKQ_DYNAMIC);
	if (system_delay_taskq == NULL) {
		FUNC3(system_taskq);
		return (1);
	}

	dynamic_taskq = FUNC2("spl_dynamic_taskq", 1,
	    maxclsyspri, boot_ncpus, INT_MAX, TASKQ_PREPOPULATE);
	if (dynamic_taskq == NULL) {
		FUNC3(system_taskq);
		FUNC3(system_delay_taskq);
		return (1);
	}

	/*
	 * This is used to annotate tq_lock, so
	 *   taskq_dispatch -> taskq_thread_spawn -> taskq_dispatch
	 * does not trigger a lockdep warning re: possible recursive locking
	 */
	dynamic_taskq->tq_lock_class = TQ_LOCK_DYNAMIC;

	return (0);
}