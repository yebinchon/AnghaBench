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
struct mssa_arg {TYPE_2__* mra; TYPE_1__* rt; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {TYPE_2__* rt_arg; } ;
typedef  TYPE_1__ range_tree_t ;
struct TYPE_6__ {scalar_t__ mra_floor_shift; int /*<<< orphan*/  mra_bt; } ;
typedef  TYPE_2__ metaslab_rt_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metaslab_size_sorted_add ; 
 int /*<<< orphan*/  metaslabstat_reload_tree ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct mssa_arg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(range_tree_t *rt)
{
	metaslab_rt_arg_t *mrap = rt->rt_arg;
#ifdef _METASLAB_TRACING
	METASLABSTAT_BUMP(metaslabstat_reload_tree);
#endif
	FUNC0(FUNC3(mrap->mra_bt));
	mrap->mra_floor_shift = 0;
	struct mssa_arg arg = {0};
	arg.rt = rt;
	arg.mra = mrap;
	FUNC2(rt, metaslab_size_sorted_add, &arg);
}