#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_4__ {scalar_t__ num_slices; int /*<<< orphan*/  slices; } ;
typedef  TYPE_1__ DimensionVec ;
typedef  int /*<<< orphan*/  DimensionSlice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_coordinate_and_slice ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

DimensionSlice *
FUNC3(DimensionVec *vec, int64 coordinate)
{
	DimensionSlice **res;

	if (vec->num_slices == 0)
		return NULL;

	FUNC0(FUNC2(vec));

	res = FUNC1(&coordinate,
				  vec->slices,
				  vec->num_slices,
				  sizeof(DimensionSlice *),
				  cmp_coordinate_and_slice);

	if (res == NULL)
		return NULL;

	return *res;
}