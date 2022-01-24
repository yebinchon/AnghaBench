#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tuple_found_func ;
typedef  int /*<<< orphan*/  tuple_filter_func ;
struct TYPE_3__ {int nkeys; void* data; int limit; int /*<<< orphan*/  scandirection; int /*<<< orphan*/  lockmode; int /*<<< orphan*/  filter; int /*<<< orphan*/  tuple_found; int /*<<< orphan*/ * scankey; int /*<<< orphan*/  index; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ ScannerCtx ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  TABLESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(int indexid, ScanKeyData *scankey, int nkeys, tuple_found_func tuple_found,
						 tuple_filter_func tuple_filter, void *data, int limit, LOCKMODE lockmode)
{
	Catalog *catalog = FUNC2();
	ScannerCtx scanctx = {
		.table = FUNC1(catalog, TABLESPACE),
		.index = FUNC0(catalog, TABLESPACE, indexid),
		.nkeys = nkeys,
		.scankey = scankey,
		.tuple_found = tuple_found,
		.filter = tuple_filter,
		.data = data,
		.limit = limit,
		.lockmode = lockmode,
		.scandirection = ForwardScanDirection,
	};

	return FUNC3(&scanctx);
}