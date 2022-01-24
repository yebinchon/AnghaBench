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
 int /*<<< orphan*/ * system_delay_taskq ; 
 int /*<<< orphan*/ * system_taskq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(void)
{
	FUNC0(system_taskq);
	system_taskq = NULL; /* defensive */
	FUNC0(system_delay_taskq);
	system_delay_taskq = NULL;
}