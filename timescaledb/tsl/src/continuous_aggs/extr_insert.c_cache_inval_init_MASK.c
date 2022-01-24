#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_4__ {int keysize; int entrysize; int /*<<< orphan*/ * hcxt; } ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  ContinuousAggsCacheInvalEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CA_CACHE_INVAL_INIT_HTAB_SIZE ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  TopTransactionContext ; 
 int /*<<< orphan*/  continuous_aggs_cache_inval_htab ; 
 int /*<<< orphan*/ * continuous_aggs_trigger_mctx ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4()
{
	HASHCTL ctl;

	FUNC1(continuous_aggs_trigger_mctx == NULL);

	continuous_aggs_trigger_mctx = FUNC0(TopTransactionContext,
														 "ConinuousAggsTriggerCtx",
														 ALLOCSET_DEFAULT_SIZES);

	FUNC3(&ctl, 0, sizeof(ctl));
	ctl.keysize = sizeof(int32);
	ctl.entrysize = sizeof(ContinuousAggsCacheInvalEntry);
	ctl.hcxt = continuous_aggs_trigger_mctx;

	continuous_aggs_cache_inval_htab = FUNC2("TS Continuous Aggs Cache Inval",
												   CA_CACHE_INVAL_INIT_HTAB_SIZE,
												   &ctl,
												   HASH_ELEM | HASH_BLOBS);
}