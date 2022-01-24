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
typedef  int /*<<< orphan*/  zfs_kernel_param_t ;
struct TYPE_4__ {int /*<<< orphan*/  spa_deadman_ziotime; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ spa_mode_global ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  zfs_deadman_ziotime_ms ; 

int
FUNC6(const char *val, zfs_kernel_param_t *kp)
{
	spa_t *spa = NULL;
	int error;

	error = FUNC4(val, kp);
	if (error < 0)
		return (FUNC1(error));

	if (spa_mode_global != 0) {
		FUNC2(&spa_namespace_lock);
		while ((spa = FUNC5(spa)) != NULL)
			spa->spa_deadman_ziotime =
			    FUNC0(zfs_deadman_ziotime_ms);
		FUNC3(&spa_namespace_lock);
	}

	return (0);
}