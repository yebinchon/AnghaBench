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
struct TYPE_5__ {size_t alloc_size; int /*<<< orphan*/ * list; } ;
struct TYPE_4__ {int /*<<< orphan*/  result_mctx; int /*<<< orphan*/  scandirection; int /*<<< orphan*/  lockmode; int /*<<< orphan*/  tuple_found; TYPE_2__* data; int /*<<< orphan*/  index; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ ScannerCtx ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Catalog ;
typedef  TYPE_2__ AccumData ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  BGW_JOB ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  bgw_job_accum_tuple_found ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

extern List *
FUNC3(size_t alloc_size, MemoryContext mctx)
{
	Catalog *catalog = FUNC1();
	AccumData list_data = {
		.list = NIL,
		.alloc_size = alloc_size,
	};
	ScannerCtx scanctx = {
		.table = FUNC0(catalog, BGW_JOB),
		.index = InvalidOid,
		.data = &list_data,
		.tuple_found = bgw_job_accum_tuple_found,
		.lockmode = AccessShareLock,
		.scandirection = ForwardScanDirection,
		.result_mctx = mctx,
	};

	FUNC2(&scanctx);
	return list_data.list;
}