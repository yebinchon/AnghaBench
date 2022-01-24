#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dimension_id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {scalar_t__ capacity; scalar_t__ num_slices; TYPE_3__** slices; } ;
typedef  TYPE_2__ Hypercube ;
typedef  TYPE_3__ DimensionSlice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(Hypercube *hc, DimensionSlice *slice)
{
	FUNC0(hc->capacity > hc->num_slices);

	hc->slices[hc->num_slices++] = slice;

	/* Check if we require a sort to maintain dimension order */
	if (hc->num_slices > 1 &&
		slice->fd.dimension_id < hc->slices[hc->num_slices - 2]->fd.dimension_id)
		FUNC2(hc);

	FUNC0(FUNC1(hc));
}