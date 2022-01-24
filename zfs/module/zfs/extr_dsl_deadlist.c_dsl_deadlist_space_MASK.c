#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  dl_lock; TYPE_1__* dl_phys; int /*<<< orphan*/  dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef  TYPE_2__ dsl_deadlist_t ;
struct TYPE_5__ {int /*<<< orphan*/  dl_uncomp; int /*<<< orphan*/  dl_comp; int /*<<< orphan*/  dl_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dsl_deadlist_t *dl,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
	FUNC0(FUNC3(dl));
	if (dl->dl_oldfmt) {
		FUNC1(FUNC2(&dl->dl_bpobj,
		    usedp, compp, uncompp));
		return;
	}

	FUNC4(&dl->dl_lock);
	*usedp = dl->dl_phys->dl_used;
	*compp = dl->dl_phys->dl_comp;
	*uncompp = dl->dl_phys->dl_uncomp;
	FUNC5(&dl->dl_lock);
}