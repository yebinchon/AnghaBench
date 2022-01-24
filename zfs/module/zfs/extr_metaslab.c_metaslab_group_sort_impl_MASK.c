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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  ms_weight; TYPE_2__* ms_group; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_8__ {int /*<<< orphan*/  mg_metaslab_tree; int /*<<< orphan*/  mg_lock; } ;
typedef  TYPE_2__ metaslab_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(metaslab_group_t *mg, metaslab_t *msp, uint64_t weight)
{
	FUNC0(FUNC1(&msp->ms_lock));
	FUNC0(FUNC1(&mg->mg_lock));
	FUNC0(msp->ms_group == mg);

	FUNC3(&mg->mg_metaslab_tree, msp);
	msp->ms_weight = weight;
	FUNC2(&mg->mg_metaslab_tree, msp);

}