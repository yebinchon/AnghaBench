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
struct TYPE_5__ {int /*<<< orphan*/  dl_tree; int /*<<< orphan*/  dl_lock; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
typedef  int /*<<< orphan*/  dsl_deadlist_entry_t ;
typedef  scalar_t__ (* deadlist_iter_t ) (void*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(dsl_deadlist_t *dl, deadlist_iter_t func, void *args)
{
	dsl_deadlist_entry_t *dle;

	FUNC0(FUNC3(dl));

	FUNC5(&dl->dl_lock);
	FUNC4(dl);
	FUNC6(&dl->dl_lock);
	for (dle = FUNC2(&dl->dl_tree); dle != NULL;
	    dle = FUNC1(&dl->dl_tree, dle)) {
		if (func(args, dle) != 0)
			break;
	}
}