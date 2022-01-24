#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* uln_prev; } ;
struct TYPE_8__ {TYPE_2__ ul_null_node; scalar_t__ ul_debug; } ;
typedef  TYPE_1__ uu_list_t ;
typedef  TYPE_2__ uu_list_node_impl_t ;
typedef  scalar_t__ uu_list_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 TYPE_2__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 void* FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,void*,...) ; 

void *
FUNC5(uu_list_t *lp, uu_list_index_t idx)
{
	uu_list_node_impl_t *np = FUNC1(idx);

	if (np == NULL)
		np = &lp->ul_null_node;

	if (lp->ul_debug) {
		if (!FUNC2(lp, idx))
			FUNC4("uu_list_nearest_prev(%p, %p): %s\n",
			    (void *)lp, (void *)idx, FUNC0(idx)?
			    "outdated index" : "invalid index");
		if (np->uln_prev == NULL)
			FUNC4("uu_list_nearest_prev(%p, %p): out-of-date "
			    "index\n", (void *)lp, (void *)idx);
	}

	if ((np = np->uln_prev) == &lp->ul_null_node)
		return (NULL);
	else
		return (FUNC3(lp, np));
}