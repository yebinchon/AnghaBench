#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_5__ {int /*<<< orphan*/  os_user_ptr_lock; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 

int
FUNC6(objset_t *os, zfsvfs_t **zfvp)
{
	int error = 0;
	if (FUNC2(os) != DMU_OST_ZFS) {
		return (FUNC0(EINVAL));
	}

	FUNC3(&os->os_user_ptr_lock);
	*zfvp = FUNC1(os);
	/* bump s_active only when non-zero to prevent umount race */
	error = FUNC5(zfvp);
	FUNC4(&os->os_user_ptr_lock);
	return (error);
}