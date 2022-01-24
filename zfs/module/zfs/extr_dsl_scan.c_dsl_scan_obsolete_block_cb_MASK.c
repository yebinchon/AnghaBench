#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dva_t ;
struct TYPE_7__ {int /*<<< orphan*/  scn_visited_this_txg; TYPE_1__* scn_dp; } ;
typedef  TYPE_2__ dsl_scan_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_3__ blkptr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERESTART ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(void *arg, const blkptr_t *bp, boolean_t bp_freed,
    dmu_tx_t *tx)
{
	FUNC0(!bp_freed);
	dsl_scan_t *scn = arg;
	const dva_t *dva = &bp->blk_dva[0];

	if (FUNC5(scn))
		return (FUNC4(ERESTART));

	FUNC6(scn->scn_dp->dp_spa,
	    FUNC3(dva), FUNC2(dva),
	    FUNC1(dva), tx);
	scn->scn_visited_this_txg++;
	return (0);
}