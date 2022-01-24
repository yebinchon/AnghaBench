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
struct TYPE_6__ {int /*<<< orphan*/  older_than; void* hypertable_id; void* job_id; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ BgwPolicyCompressChunks ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_bgw_policy_compress_chunks_hypertable_id ; 
 int /*<<< orphan*/  Anum_bgw_policy_compress_chunks_job_id ; 
 int /*<<< orphan*/  Anum_bgw_policy_compress_chunks_older_than ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int Natts_bgw_policy_compress_chunks ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC6(TupleInfo *ti, void *const data)
{
	BgwPolicyCompressChunks **policy = data;
	bool nulls[Natts_bgw_policy_compress_chunks];
	Datum values[Natts_bgw_policy_compress_chunks];

	FUNC4(ti->tuple, ti->desc, values, nulls);

	*policy = FUNC3(ti->mctx, sizeof(BgwPolicyCompressChunks));
	FUNC0(!nulls[FUNC1(Anum_bgw_policy_compress_chunks_job_id)]);
	(*policy)->fd.job_id =
		FUNC2(values[FUNC1(Anum_bgw_policy_compress_chunks_job_id)]);

	FUNC0(!nulls[FUNC1(Anum_bgw_policy_compress_chunks_hypertable_id)]);
	(*policy)->fd.hypertable_id = FUNC2(
		values[FUNC1(Anum_bgw_policy_compress_chunks_hypertable_id)]);

	FUNC0(!nulls[FUNC1(Anum_bgw_policy_compress_chunks_older_than)]);

	(*policy)->fd.older_than = *FUNC5(
		values[FUNC1(Anum_bgw_policy_compress_chunks_older_than)]);

	return SCAN_CONTINUE;
}