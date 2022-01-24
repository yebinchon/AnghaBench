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
typedef  int uint64_t ;
struct TYPE_5__ {int ms_weight; int /*<<< orphan*/  ms_group; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int METASLAB_ACTIVE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC4(metaslab_t *msp)
{
	FUNC0(FUNC1(&msp->ms_lock));

	/* note: we preserve the mask (e.g. indication of primary, etc..) */
	uint64_t was_active = msp->ms_weight & METASLAB_ACTIVE_MASK;
	FUNC2(msp->ms_group, msp,
	    FUNC3(msp, B_FALSE) | was_active);
}