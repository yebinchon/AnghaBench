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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 scalar_t__ kstat_id ; 
 int /*<<< orphan*/  kstat_module_list ; 
 int /*<<< orphan*/  kstat_module_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC2(void)
{
	FUNC1(&kstat_module_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(&kstat_module_list);
	kstat_id = 0;
	return (0);
}