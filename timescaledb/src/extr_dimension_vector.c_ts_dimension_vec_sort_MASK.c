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
struct TYPE_4__ {int /*<<< orphan*/  num_slices; int /*<<< orphan*/  slices; } ;
typedef  TYPE_1__ DimensionVec ;
typedef  int /*<<< orphan*/  DimensionSlice ;

/* Variables and functions */
 int /*<<< orphan*/  cmp_slices ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

DimensionVec *
FUNC1(DimensionVec **vecptr)
{
	DimensionVec *vec = *vecptr;

	FUNC0(vec->slices, vec->num_slices, sizeof(DimensionSlice *), cmp_slices);

	return vec;
}