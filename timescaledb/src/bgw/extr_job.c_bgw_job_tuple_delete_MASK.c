#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  TYPE_2__ FormData_bgw_job ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ScanTupleResult
FUNC9(TupleInfo *ti, void *data)
{
	CatalogSecurityContext sec_ctx;
	int32 job_id = ((FormData_bgw_job *) FUNC0(ti->tuple))->id;

	/* Also delete the bgw_stat entry */
	FUNC1(job_id);

	/* Delete any policy args associated with this job */
	FUNC4(job_id);
	FUNC3(job_id);

	/* Delete any stats in bgw_policy_chunk_stats related to this job */
	FUNC2(job_id);

	FUNC5(FUNC6(), &sec_ctx);
	FUNC7(ti->scanrel, ti->tuple);
	FUNC8(&sec_ctx);

	return SCAN_CONTINUE;
}