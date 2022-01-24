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
typedef  int (* uu_walk_fn_t ) (void*,void*) ;
typedef  int /*<<< orphan*/  uu_list_walk_t ;
struct TYPE_8__ {struct TYPE_8__* uln_prev; struct TYPE_8__* uln_next; } ;
struct TYPE_7__ {TYPE_2__ ul_null_node; scalar_t__ ul_debug; } ;
typedef  TYPE_1__ uu_list_t ;
typedef  TYPE_2__ uu_list_node_impl_t ;
typedef  int uint32_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  UU_ERROR_CALLBACK_FAILED ; 
 int /*<<< orphan*/  UU_ERROR_UNKNOWN_FLAG ; 
 int UU_WALK_NEXT ; 
 int UU_WALK_REVERSE ; 
 int UU_WALK_ROBUST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC3 (void*,void*) ; 
 int FUNC4 (void*,void*) ; 
 int FUNC5 (void*,void*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(uu_list_t *lp, uu_walk_fn_t *func, void *private, uint32_t flags)
{
	uu_list_node_impl_t *np;

	int status = UU_WALK_NEXT;

	int robust = (flags & UU_WALK_ROBUST);
	int reverse = (flags & UU_WALK_REVERSE);

	if (flags & ~(UU_WALK_ROBUST | UU_WALK_REVERSE)) {
		FUNC7(UU_ERROR_UNKNOWN_FLAG);
		return (-1);
	}

	if (lp->ul_debug || robust) {
		uu_list_walk_t my_walk;
		void *e;

		FUNC2(&my_walk, lp, flags);
		while (status == UU_WALK_NEXT &&
		    (e = FUNC6(&my_walk)) != NULL)
			status = (*func)(e, private);
		FUNC1(&my_walk);
	} else {
		if (!reverse) {
			for (np = lp->ul_null_node.uln_next;
			    status == UU_WALK_NEXT && np != &lp->ul_null_node;
			    np = np->uln_next) {
				status = (*func)(FUNC0(lp, np), private);
			}
		} else {
			for (np = lp->ul_null_node.uln_prev;
			    status == UU_WALK_NEXT && np != &lp->ul_null_node;
			    np = np->uln_prev) {
				status = (*func)(FUNC0(lp, np), private);
			}
		}
	}
	if (status >= 0)
		return (0);
	FUNC7(UU_ERROR_CALLBACK_FAILED);
	return (-1);
}