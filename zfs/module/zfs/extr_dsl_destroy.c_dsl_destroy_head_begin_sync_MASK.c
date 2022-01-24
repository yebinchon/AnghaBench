#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  ddha_name; } ;
typedef  TYPE_1__ dsl_destroy_head_arg_t ;
struct TYPE_9__ {int /*<<< orphan*/  ds_dbuf; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FLAG_INCONSISTENT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_5__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC7(void *arg, dmu_tx_t *tx)
{
	dsl_destroy_head_arg_t *ddha = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dataset_t *ds;

	FUNC0(FUNC3(dp, ddha->ddha_name, FTAG, &ds));

	/* Mark it as inconsistent on-disk, in case we crash */
	FUNC1(ds->ds_dbuf, tx);
	FUNC4(ds)->ds_flags |= DS_FLAG_INCONSISTENT;

	FUNC6(ds, "destroy begin", tx, " ");
	FUNC5(ds, FTAG);
}