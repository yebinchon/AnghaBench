#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MinMaxResult ;
typedef  int /*<<< orphan*/  IndexScanDesc ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BackwardScanDirection ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINMAX_FOUND ; 
 int /*<<< orphan*/  MINMAX_NO_TUPLES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MinMaxResult
FUNC8(Relation rel, Relation idxrel, AttrNumber attnum, Datum minmax[2])
{
	IndexScanDesc scan = FUNC4(rel, idxrel, FUNC0(), 0, 0);
	HeapTuple tuple;
	bool isnull;
	bool nulls[2] = { true, true };
	int n = 0;

	tuple = FUNC6(scan, BackwardScanDirection);

	if (FUNC1(tuple))
	{
		minmax[n] = FUNC3(tuple, attnum, FUNC2(rel), &isnull);
		nulls[n++] = false;
	}

	FUNC7(scan, NULL, 0, NULL, 0);
	tuple = FUNC6(scan, ForwardScanDirection);

	if (FUNC1(tuple))
	{
		minmax[n] = FUNC3(tuple, attnum, FUNC2(rel), &isnull);
		nulls[n++] = false;
	}

	FUNC5(scan);

	return (nulls[0] || nulls[1]) ? MINMAX_NO_TUPLES : MINMAX_FOUND;
}