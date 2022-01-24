#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  DimensionVec ;
typedef  TYPE_2__ DimensionSlice ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

DimensionVec *
FUNC2(DimensionVec **vecptr, DimensionSlice *slice)
{
	DimensionVec *vec = *vecptr;

	int32 existing_slice_index = FUNC1(vec, slice->fd.id);

	if (existing_slice_index == -1)
	{
		return FUNC0(vecptr, slice);
	}
	return vec;
}