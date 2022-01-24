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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  dp_spa; int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_obsolete_bpobj; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_OBSOLETE_BPOBJ ; 
 int /*<<< orphan*/  SPA_FEATURE_DEVICE_REMOVAL ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(dsl_pool_t *dp, dmu_tx_t *tx)
{
	uint64_t obj;
	/*
	 * Currently, we only create the obsolete_bpobj where there are
	 * indirect vdevs with referenced mappings.
	 */
	FUNC0(FUNC5(dp->dp_spa, SPA_FEATURE_DEVICE_REMOVAL));
	/* create and open the obsolete_bpobj */
	obj = FUNC2(dp->dp_meta_objset, SPA_OLD_MAXBLOCKSIZE, tx);
	FUNC1(FUNC3(&dp->dp_obsolete_bpobj, dp->dp_meta_objset, obj));
	FUNC1(FUNC6(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_OBSOLETE_BPOBJ, sizeof (uint64_t), 1, &obj, tx));
	FUNC4(dp->dp_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
}