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
struct TYPE_4__ {int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_5__ {int /*<<< orphan*/  job_id; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  TYPE_2__ FormData_bgw_policy_chunk_stats ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC2(TupleInfo *ti, void *const data)
{
	FormData_bgw_policy_chunk_stats *fd = (FormData_bgw_policy_chunk_stats *) FUNC0(ti->tuple);

	/* This call will actually delete the row for us */
	FUNC1(fd->job_id);
	return SCAN_CONTINUE;
}