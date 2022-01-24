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
 int FUNC0 () ; 
 int /*<<< orphan*/ * ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int vmm_initialized ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  vmm_ops_intel ; 

int
FUNC3(void)
{
	int error;

	FUNC1();

	error = FUNC2();
	if (error)
		return (error);
	
	ops = &vmm_ops_intel;

	error = FUNC0();

	if (error == 0)
		vmm_initialized = 1;

	return (error);
}