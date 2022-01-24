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
struct TYPE_3__ {int /*<<< orphan*/  mls_list; int /*<<< orphan*/  mls_lock; } ;
typedef  TYPE_1__ multilist_sublist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 

void
FUNC6(multilist_sublist_t *mls, void *obj)
{
	void *prev = FUNC4(&mls->mls_list, obj);

	FUNC0(FUNC1(&mls->mls_lock));
	FUNC0(!FUNC3(&mls->mls_list));

	/* 'obj' must be at the head of the list, nothing to do */
	if (prev == NULL)
		return;

	FUNC5(&mls->mls_list, obj);
	FUNC2(&mls->mls_list, prev, obj);
}