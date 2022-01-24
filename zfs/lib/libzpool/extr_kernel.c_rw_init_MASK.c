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
struct TYPE_3__ {scalar_t__ rw_owner; scalar_t__ rw_readers; int /*<<< orphan*/  rw_lock; } ;
typedef  TYPE_1__ krwlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(krwlock_t *rwlp, char *name, int type, void *arg)
{
	FUNC0(FUNC1(&rwlp->rw_lock, NULL));
	rwlp->rw_readers = 0;
	rwlp->rw_owner = 0;
}