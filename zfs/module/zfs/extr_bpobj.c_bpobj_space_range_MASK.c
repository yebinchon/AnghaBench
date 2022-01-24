#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct space_range_arg {scalar_t__ used; scalar_t__ comp; scalar_t__ uncomp; scalar_t__ maxtxg; scalar_t__ mintxg; int /*<<< orphan*/  spa; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  bpo_os; scalar_t__ bpo_havecomp; } ;
typedef  TYPE_1__ bpobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TXG_INITIAL ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct space_range_arg*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  space_range_cb ; 

int
FUNC5(bpobj_t *bpo, uint64_t mintxg, uint64_t maxtxg,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
	struct space_range_arg sra = { 0 };
	int err;

	FUNC0(FUNC1(bpo));

	/*
	 * As an optimization, if they want the whole txg range, just
	 * get bpo_bytes rather than iterating over the bps.
	 */
	if (mintxg < TXG_INITIAL && maxtxg == UINT64_MAX && bpo->bpo_havecomp)
		return (FUNC3(bpo, usedp, compp, uncompp));

	sra.spa = FUNC4(bpo->bpo_os);
	sra.mintxg = mintxg;
	sra.maxtxg = maxtxg;

	err = FUNC2(bpo, space_range_cb, &sra, NULL);
	*usedp = sra.used;
	*compp = sra.comp;
	*uncompp = sra.uncomp;
	return (err);
}