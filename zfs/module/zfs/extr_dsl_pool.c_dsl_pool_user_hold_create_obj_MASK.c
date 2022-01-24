#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_3__ {scalar_t__ dp_tmp_userrefs_obj; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_OT_USERREFS ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_TMP_USERREFS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(dsl_pool_t *dp, dmu_tx_t *tx)
{
	objset_t *mos = dp->dp_meta_objset;

	FUNC0(dp->dp_tmp_userrefs_obj == 0);
	FUNC0(FUNC1(tx));

	dp->dp_tmp_userrefs_obj = FUNC2(mos, DMU_OT_USERREFS,
	    DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_TMP_USERREFS, tx);
}