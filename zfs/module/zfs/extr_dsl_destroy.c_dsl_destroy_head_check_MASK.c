#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  ddha_name; } ;
typedef  TYPE_1__ dsl_destroy_head_arg_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(void *arg, dmu_tx_t *tx)
{
	dsl_destroy_head_arg_t *ddha = arg;
	dsl_pool_t *dp = FUNC0(tx);
	dsl_dataset_t *ds;
	int error;

	error = FUNC1(dp, ddha->ddha_name, FTAG, &ds);
	if (error != 0)
		return (error);

	error = FUNC3(ds, 0);
	FUNC2(ds, FTAG);
	return (error);
}