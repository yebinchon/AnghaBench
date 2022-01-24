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
struct TYPE_4__ {int /*<<< orphan*/  dl_lock; int /*<<< orphan*/  dl_tree; } ;
typedef  TYPE_1__ dsl_deadlist_t ;
typedef  int /*<<< orphan*/  dsl_deadlist_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

dsl_deadlist_entry_t *
FUNC4(dsl_deadlist_t *dl)
{
	dsl_deadlist_entry_t *dle;

	FUNC2(&dl->dl_lock);
	FUNC1(dl);
	dle = FUNC0(&dl->dl_tree);
	FUNC3(&dl->dl_lock);

	return (dle);
}