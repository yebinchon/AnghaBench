#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UTHashTable ;
struct TYPE_7__ {int width; } ;
typedef  int /*<<< orphan*/  MMRect ;
typedef  int /*<<< orphan*/  MMPointArrayRef ;
typedef  int /*<<< orphan*/  MMPoint ;
typedef  TYPE_1__* MMBitmapRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMPointZero ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

MMPointArrayRef FUNC6(MMBitmapRef needle, MMBitmapRef haystack,
                                    MMRect rect, float tolerance)
{
	MMPointArrayRef pointArray = FUNC2(0);
	MMPoint point = MMPointZero;
	UTHashTable badShiftTable;

	FUNC5(&badShiftTable, needle);
	while (FUNC4(needle, haystack, &point, rect,
	                          tolerance, point, &badShiftTable) == 0) {
		const size_t scanWidth = (haystack->width - needle->width) + 1;
		FUNC1(pointArray, point);
		FUNC0(point, scanWidth, 0);
	}
	FUNC3(&badShiftTable);

	return pointArray;
}