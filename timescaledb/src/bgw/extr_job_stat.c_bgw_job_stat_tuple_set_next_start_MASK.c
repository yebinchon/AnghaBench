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
struct TYPE_4__ {int /*<<< orphan*/  scanrel; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_5__ {int /*<<< orphan*/  next_start; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FormData_bgw_job_stat ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC4(TupleInfo *ti, void *const data)
{
	TimestampTz *next_start = data;
	HeapTuple tuple = FUNC1(ti->tuple);
	FormData_bgw_job_stat *fd = (FormData_bgw_job_stat *) FUNC0(tuple);

	fd->next_start = *next_start;

	FUNC3(ti->scanrel, tuple);
	FUNC2(tuple);

	return SCAN_DONE;
}