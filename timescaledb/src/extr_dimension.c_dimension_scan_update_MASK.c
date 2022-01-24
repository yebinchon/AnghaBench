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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int nkeys; int limit; void* data; int /*<<< orphan*/  scandirection; int /*<<< orphan*/  lockmode; int /*<<< orphan*/  tuple_found; int /*<<< orphan*/ * scankey; int /*<<< orphan*/  index; int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ ScannerCtx ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_dimension_id_idx_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  DIMENSION ; 
 int /*<<< orphan*/  DIMENSION_ID_IDX ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(int32 dimension_id, tuple_found_func tuple_found, void *data,
					  LOCKMODE lockmode)
{
	Catalog *catalog = FUNC4();
	ScanKeyData scankey[1];
	ScannerCtx scanctx = {
		.table = FUNC3(catalog, DIMENSION),
		.index = FUNC2(catalog, DIMENSION, DIMENSION_ID_IDX),
		.nkeys = 1,
		.limit = 1,
		.scankey = scankey,
		.data = data,
		.tuple_found = tuple_found,
		.lockmode = lockmode,
		.scandirection = ForwardScanDirection,
	};

	FUNC1(&scankey[0],
				Anum_dimension_id_idx_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(dimension_id));

	return FUNC5(&scanctx);
}