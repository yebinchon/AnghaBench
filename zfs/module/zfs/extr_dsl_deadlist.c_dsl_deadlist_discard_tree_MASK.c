#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dl_lock; scalar_t__ dl_havetree; int /*<<< orphan*/  dl_tree; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
struct TYPE_7__ {int /*<<< orphan*/  dle_bpobj; } ;
typedef  TYPE_2__ dsl_deadlist_entry_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dsl_deadlist_t *dl)
{
	FUNC4(&dl->dl_lock);

	if (!dl->dl_havetree) {
		FUNC5(&dl->dl_lock);
		return;
	}
	dsl_deadlist_entry_t *dle;
	void *cookie = NULL;
	while ((dle = FUNC1(&dl->dl_tree, &cookie)) != NULL) {
		FUNC2(&dle->dle_bpobj);
		FUNC3(dle, sizeof (*dle));
	}
	FUNC0(&dl->dl_tree);

	dl->dl_havetree = B_FALSE;
	FUNC5(&dl->dl_lock);
}