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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {scalar_t__ dduha_minor; int /*<<< orphan*/  dduha_chkholds; } ;
typedef  TYPE_2__ dsl_dataset_user_hold_arg_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_user_hold_arg_t *dduha = arg;
	dsl_pool_t *dp = FUNC1(tx);
	nvlist_t *tmpholds;
	uint64_t now = FUNC8();

	if (dduha->dduha_minor != 0)
		tmpholds = FUNC6();
	else
		tmpholds = NULL;
	for (nvpair_t *pair = FUNC9(dduha->dduha_chkholds, NULL);
	    pair != NULL;
	    pair = FUNC9(dduha->dduha_chkholds, pair)) {
		dsl_dataset_t *ds;

		FUNC0(FUNC2(dp, FUNC10(pair), FTAG, &ds));
		FUNC4(tmpholds, ds,
		    FUNC7(pair), dduha->dduha_minor, now, tx);
		FUNC3(ds, FTAG);
	}
	FUNC5(dp->dp_spa, tmpholds, dduha->dduha_minor);
}