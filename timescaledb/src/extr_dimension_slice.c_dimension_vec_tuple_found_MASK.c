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
struct TYPE_3__ {int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  DimensionVec ;
typedef  int /*<<< orphan*/  DimensionSlice ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ScanTupleResult
FUNC2(TupleInfo *ti, void *data)
{
	DimensionVec **slices = data;
	DimensionSlice *slice = FUNC0(ti->tuple);

	*slices = FUNC1(slices, slice);

	return SCAN_CONTINUE;
}