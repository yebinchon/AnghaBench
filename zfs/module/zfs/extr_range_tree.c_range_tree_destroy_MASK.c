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
struct TYPE_7__ {int /*<<< orphan*/  rt_root; int /*<<< orphan*/  rt_arg; TYPE_1__* rt_ops; int /*<<< orphan*/  rt_space; } ;
typedef  TYPE_2__ range_tree_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* rtop_destroy ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(range_tree_t *rt)
{
	FUNC0(rt->rt_space);

	if (rt->rt_ops != NULL && rt->rt_ops->rtop_destroy != NULL)
		rt->rt_ops->rtop_destroy(rt, rt->rt_arg);

	FUNC3(&rt->rt_root);
	FUNC1(rt, sizeof (*rt));
}