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
struct TYPE_7__ {scalar_t__ z_unmounted; } ;
typedef  TYPE_1__ zfsvfs_t ;
struct TYPE_8__ {int /*<<< orphan*/  os_user_ptr_lock; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DMU_OST_ZFS ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC5(objset_t *os)
{
	zfsvfs_t *zfvp;
	boolean_t unmounted = B_FALSE;

	FUNC0(FUNC2(os) == DMU_OST_ZFS);

	FUNC3(&os->os_user_ptr_lock);
	zfvp = FUNC1(os);
	if (zfvp != NULL && zfvp->z_unmounted)
		unmounted = B_TRUE;
	FUNC4(&os->os_user_ptr_lock);

	return (unmounted);
}