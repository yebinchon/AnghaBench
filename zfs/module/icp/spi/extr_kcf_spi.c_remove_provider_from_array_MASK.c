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
struct TYPE_7__ {struct TYPE_7__* pl_next; TYPE_2__* pl_provider; } ;
typedef  TYPE_1__ kcf_provider_list_t ;
struct TYPE_8__ {int /*<<< orphan*/  pd_lock; TYPE_1__* pd_provider_list; } ;
typedef  TYPE_2__ kcf_provider_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(kcf_provider_desc_t *p1, kcf_provider_desc_t *p2)
{

	kcf_provider_list_t *pl = NULL, **prev;

	FUNC2(&p2->pd_lock);
	for (pl = p2->pd_provider_list, prev = &p2->pd_provider_list;
	    pl != NULL; prev = &pl->pl_next, pl = pl->pl_next) {
		if (pl->pl_provider == p1) {
			break;
		}
	}

	if (p1 == NULL) {
		FUNC3(&p2->pd_lock);
		return;
	}

	/* detach and free kcf_provider_list structure */
	FUNC0(p1);
	*prev = pl->pl_next;
	FUNC1(pl, sizeof (*pl));
	FUNC3(&p2->pd_lock);
}