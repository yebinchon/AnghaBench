#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ spa_load_state; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_12__ {TYPE_1__* scn_dp; int /*<<< orphan*/  scn_async_stalled; scalar_t__ scn_async_destroying; } ;
typedef  TYPE_3__ dsl_scan_t ;
typedef  int boolean_t ;
struct TYPE_10__ {int /*<<< orphan*/  dp_free_bpobj; TYPE_2__* dp_spa; } ;

/* Variables and functions */
 int B_FALSE ; 
 int B_TRUE ; 
 scalar_t__ SPA_LOAD_NONE ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

boolean_t
FUNC6(dsl_scan_t *scn)
{
	spa_t *spa = scn->scn_dp->dp_spa;
	uint64_t used = 0, comp, uncomp;
	boolean_t clones_left;

	if (spa->spa_load_state != SPA_LOAD_NONE)
		return (B_FALSE);
	if (FUNC4(spa))
		return (B_FALSE);
	if ((FUNC2(scn) && !FUNC1(scn)) ||
	    (scn->scn_async_destroying && !scn->scn_async_stalled))
		return (B_TRUE);

	if (FUNC5(scn->scn_dp->dp_spa) >= SPA_VERSION_DEADLISTS) {
		(void) FUNC0(&scn->scn_dp->dp_free_bpobj,
		    &used, &comp, &uncomp);
	}
	clones_left = FUNC3(spa);
	return ((used != 0) || (clones_left));
}