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
struct TYPE_3__ {int /*<<< orphan*/  rw_owner; int /*<<< orphan*/  rw_lock; int /*<<< orphan*/  rw_readers; } ;
typedef  TYPE_1__ krwlock_t ;
typedef  scalar_t__ krw_t ;

/* Variables and functions */
 scalar_t__ RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(krwlock_t *rwlp, krw_t rw)
{
	if (rw == RW_READER) {
		FUNC0(FUNC2(&rwlp->rw_lock));
		FUNC1(&rwlp->rw_readers);
	} else {
		FUNC0(FUNC3(&rwlp->rw_lock));
		rwlp->rw_owner = FUNC4();
	}
}