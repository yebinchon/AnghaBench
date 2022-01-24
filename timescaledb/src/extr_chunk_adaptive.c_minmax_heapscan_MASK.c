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
struct TYPE_3__ {int /*<<< orphan*/  cmp_proc_finfo; int /*<<< orphan*/  cmp_proc; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MinMaxResult ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  HeapScanDesc ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MINMAX_FOUND ; 
 int /*<<< orphan*/  MINMAX_NO_TUPLES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TYPECACHE_CMP_PROC ; 
 int TYPECACHE_CMP_PROC_FINFO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static MinMaxResult
FUNC11(Relation rel, Oid atttype, AttrNumber attnum, Datum minmax[2])
{
	HeapScanDesc scan;
	HeapTuple tuple;
	TypeCacheEntry *tce;
	bool nulls[2] = { true, true };

	/* Lookup the tuple comparison function from the type cache */
	tce = FUNC10(atttype, TYPECACHE_CMP_PROC | TYPECACHE_CMP_PROC_FINFO);

	if (NULL == tce || !FUNC3(tce->cmp_proc))
		FUNC5(ERROR, "no comparison function for type %u", atttype);

	scan = FUNC6(rel, FUNC2(), 0, NULL);

	while ((tuple = FUNC9(scan, ForwardScanDirection)) != NULL)
	{
		bool isnull;
		Datum value = FUNC8(tuple, attnum, FUNC4(rel), &isnull);

		if (isnull)
			continue;

		/* Check for new min */
		if (nulls[0] || FUNC0(FUNC1(&tce->cmp_proc_finfo, value, minmax[0])) < 0)
		{
			nulls[0] = false;
			minmax[0] = value;
		}

		/* Check for new max */
		if (nulls[1] || FUNC0(FUNC1(&tce->cmp_proc_finfo, value, minmax[1])) > 0)
		{
			nulls[1] = false;
			minmax[1] = value;
		}
	}

	FUNC7(scan);

	return (nulls[0] || nulls[1]) ? MINMAX_NO_TUPLES : MINMAX_FOUND;
}