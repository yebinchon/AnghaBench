#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_11__ {scalar_t__ lowest_modified_value; scalar_t__ greatest_modified_value; } ;
struct TYPE_10__ {scalar_t__ lowest_modified_value; scalar_t__ greatest_modified_value; } ;
struct TYPE_9__ {int /*<<< orphan*/ * invalidations; int /*<<< orphan*/  mctx; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ InvalidationScanState ;
typedef  TYPE_3__ Invalidation ;
typedef  TYPE_4__* Form_continuous_aggs_hypertable_invalidation_log ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC6(TupleInfo *ti, void *data)
{
	InvalidationScanState *scan_state = (InvalidationScanState *) data;

	MemoryContext old_ctx = FUNC2(scan_state->mctx);
	Form_continuous_aggs_hypertable_invalidation_log invalidation_form =
		((Form_continuous_aggs_hypertable_invalidation_log) FUNC1(ti->tuple));
	Invalidation *invalidation = FUNC4(sizeof(*invalidation));

	invalidation->lowest_modified_value = invalidation_form->lowest_modified_value;
	invalidation->greatest_modified_value = invalidation_form->greatest_modified_value;

	FUNC0(invalidation->lowest_modified_value <= invalidation->greatest_modified_value);

	*scan_state->invalidations = FUNC3(*scan_state->invalidations, invalidation);

	FUNC2(old_ctx);

	FUNC5(ti->scanrel, ti->tuple);

	return SCAN_CONTINUE;
}