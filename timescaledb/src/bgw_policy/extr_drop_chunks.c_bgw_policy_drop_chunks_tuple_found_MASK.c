#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mctx; int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_2__ TupleInfo ;
struct TYPE_6__ {void* cascade_to_materializations; void* cascade; int /*<<< orphan*/  older_than; void* hypertable_id; void* job_id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ BgwPolicyDropChunks ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_bgw_policy_drop_chunks_cascade ; 
 int /*<<< orphan*/  Anum_bgw_policy_drop_chunks_cascade_to_materializations ; 
 int /*<<< orphan*/  Anum_bgw_policy_drop_chunks_hypertable_id ; 
 int /*<<< orphan*/  Anum_bgw_policy_drop_chunks_job_id ; 
 int /*<<< orphan*/  Anum_bgw_policy_drop_chunks_older_than ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int Natts_bgw_policy_drop_chunks ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC7(TupleInfo *ti, void *const data)
{
	BgwPolicyDropChunks **policy = data;
	bool nulls[Natts_bgw_policy_drop_chunks];
	Datum values[Natts_bgw_policy_drop_chunks];

	/* cannot use STRUCT_FROM_TUPLE because bgw_policy_drop_chunks
	 * includes a column(older_than) that has a composite data type
	 */
	FUNC5(ti->tuple, ti->desc, values, nulls);

	*policy = FUNC4(ti->mctx, sizeof(BgwPolicyDropChunks));
	FUNC0(!nulls[FUNC1(Anum_bgw_policy_drop_chunks_job_id)]);
	(*policy)->fd.job_id =
		FUNC3(values[FUNC1(Anum_bgw_policy_drop_chunks_job_id)]);

	FUNC0(!nulls[FUNC1(Anum_bgw_policy_drop_chunks_hypertable_id)]);
	(*policy)->fd.hypertable_id =
		FUNC3(values[FUNC1(Anum_bgw_policy_drop_chunks_hypertable_id)]);

	FUNC0(!nulls[FUNC1(Anum_bgw_policy_drop_chunks_older_than)]);

	(*policy)->fd.older_than = *FUNC6(
		values[FUNC1(Anum_bgw_policy_drop_chunks_older_than)]);

	FUNC0(!nulls[FUNC1(Anum_bgw_policy_drop_chunks_cascade)]);
	(*policy)->fd.cascade =
		FUNC2(values[FUNC1(Anum_bgw_policy_drop_chunks_cascade)]);

	FUNC0(
		!nulls[FUNC1(Anum_bgw_policy_drop_chunks_cascade_to_materializations)]);
	(*policy)->fd.cascade_to_materializations = FUNC2(
		values[FUNC1(Anum_bgw_policy_drop_chunks_cascade_to_materializations)]);

	return SCAN_CONTINUE;
}