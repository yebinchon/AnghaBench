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

/* Variables and functions */
 int /*<<< orphan*/ * dynamic_taskq ; 
 int /*<<< orphan*/ * system_delay_taskq ; 
 int /*<<< orphan*/ * system_taskq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskq_tsd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{
	FUNC0(dynamic_taskq);
	dynamic_taskq = NULL;

	FUNC0(system_delay_taskq);
	system_delay_taskq = NULL;

	FUNC0(system_taskq);
	system_taskq = NULL;

	FUNC1(&taskq_tsd);
}