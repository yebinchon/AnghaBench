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
typedef  size_t Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  DimensionSlice ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  DIMENSION_SLICE ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

void
FUNC5(DimensionSlice **slices, Size num_slices)
{
	Catalog *catalog = FUNC4();
	Relation rel;
	Size i;

	rel = FUNC3(FUNC0(catalog, DIMENSION_SLICE), RowExclusiveLock);

	for (i = 0; i < num_slices; i++)
		FUNC1(rel, slices[i]);

	FUNC2(rel, RowExclusiveLock);
}