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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;
struct TYPE_6__ {TYPE_1__ ctx; } ;
typedef  TYPE_2__ ScanIterator ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_continuous_aggs_hypertable_invalidation_log_idx_hypertable_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG ; 
 int /*<<< orphan*/  CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG_IDX ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(ScanIterator *iterator,
													   const int32 raw_hypertable_id)
{
	iterator->ctx.index = FUNC1(FUNC2(),
											CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG,
											CONTINUOUS_AGGS_HYPERTABLE_INVALIDATION_LOG_IDX);

	FUNC3(
		iterator,
		Anum_continuous_aggs_hypertable_invalidation_log_idx_hypertable_id,
		BTEqualStrategyNumber,
		F_INT4EQ,
		FUNC0(raw_hypertable_id));
}