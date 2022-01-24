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
struct TYPE_3__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_dimension_id ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ScanTupleResult
FUNC8(TupleInfo *ti, void *data)
{
	CatalogSecurityContext sec_ctx;
	bool isnull;
	Datum dimension_id = FUNC2(ti->tuple, Anum_dimension_id, ti->desc, &isnull);
	bool *delete_slices = data;

	FUNC0(!isnull);

	/* delete dimension slices */
	if (NULL != delete_slices && *delete_slices)
		FUNC7(FUNC1(dimension_id), false);

	FUNC3(FUNC4(), &sec_ctx);
	FUNC5(ti->scanrel, ti->tuple);
	FUNC6(&sec_ctx);

	return SCAN_CONTINUE;
}