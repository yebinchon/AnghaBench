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
struct TYPE_3__ {int nkeys; void* data; int limit; int /*<<< orphan*/  result_mctx; int /*<<< orphan*/  scandirection; int /*<<< orphan*/  lockmode; int /*<<< orphan*/  tuple_found; int /*<<< orphan*/ * scankey; int /*<<< orphan*/  index; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ ScannerCtx ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(int indexid, ScanKeyData scankey[], int nkeys, tuple_found_func tuple_found,
					void *data, int limit, ScanDirection scandir, LOCKMODE lockmode,
					MemoryContext mctx)
{
	Catalog *catalog = FUNC2();
	ScannerCtx ctx = {
		.table = FUNC1(catalog, CHUNK),
		.index = FUNC0(catalog, CHUNK, indexid),
		.nkeys = nkeys,
		.data = data,
		.scankey = scankey,
		.tuple_found = tuple_found,
		.limit = limit,
		.lockmode = lockmode,
		.scandirection = scandir,
		.result_mctx = mctx,
	};

	return FUNC3(&ctx);
}