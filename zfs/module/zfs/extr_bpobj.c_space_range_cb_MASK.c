#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct space_range_arg {scalar_t__ mintxg; scalar_t__ maxtxg; int /*<<< orphan*/  uncomp; int /*<<< orphan*/  comp; int /*<<< orphan*/  spa; int /*<<< orphan*/  used; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_7__ {scalar_t__ blk_birth; } ;
typedef  TYPE_1__ blkptr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *arg, const blkptr_t *bp, boolean_t bp_freed, dmu_tx_t *tx)
{
	struct space_range_arg *sra = arg;

	if (bp->blk_birth > sra->mintxg && bp->blk_birth <= sra->maxtxg) {
		if (FUNC4(FUNC5(sra->spa)))
			sra->used += FUNC3(sra->spa, bp);
		else
			sra->used += FUNC2(sra->spa, bp);
		sra->comp += FUNC0(bp);
		sra->uncomp += FUNC1(bp);
	}
	return (0);
}