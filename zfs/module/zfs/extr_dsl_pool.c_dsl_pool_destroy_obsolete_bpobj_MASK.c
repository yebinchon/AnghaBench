#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bpo_object; } ;
struct TYPE_4__ {TYPE_3__ dp_obsolete_bpobj; int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_OBSOLETE_BPOBJ ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(dsl_pool_t *dp, dmu_tx_t *tx)
{
	FUNC3(dp->dp_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
	FUNC0(FUNC4(dp->dp_meta_objset,
	    DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_OBSOLETE_BPOBJ, tx));
	FUNC2(dp->dp_meta_objset,
	    dp->dp_obsolete_bpobj.bpo_object, tx);
	FUNC1(&dp->dp_obsolete_bpobj);
}