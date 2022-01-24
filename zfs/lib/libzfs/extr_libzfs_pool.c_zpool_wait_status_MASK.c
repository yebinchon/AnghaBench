#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_wait_activity_t ;
struct TYPE_3__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/  zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(zpool_handle_t *zhp, zpool_wait_activity_t activity,
    boolean_t *missing, boolean_t *waited)
{
	int error = FUNC1(zhp->zpool_name, activity, waited);
	*missing = (error == ENOENT);
	if (*missing)
		return (0);

	if (error != 0) {
		(void) FUNC2(zhp->zpool_hdl, error,
		    FUNC0(TEXT_DOMAIN, "error waiting in pool '%s'"),
		    zhp->zpool_name);
	}

	return (error);
}