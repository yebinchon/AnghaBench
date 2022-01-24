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
struct TYPE_3__ {int /*<<< orphan*/ * zr_caller; int /*<<< orphan*/ * zr_owner; int /*<<< orphan*/  zr_cv; scalar_t__ zr_refcount; int /*<<< orphan*/  zr_mtx; } ;
typedef  TYPE_1__ zrlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(zrlock_t *zrl)
{
	FUNC1(&zrl->zr_mtx, NULL, MUTEX_DEFAULT, NULL);
	zrl->zr_refcount = 0;
	FUNC0(&zrl->zr_cv, NULL, CV_DEFAULT, NULL);
#ifdef	ZFS_DEBUG
	zrl->zr_owner = NULL;
	zrl->zr_caller = NULL;
#endif
}