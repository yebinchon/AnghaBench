#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  dimension_slice_id; } ;
struct TYPE_16__ {TYPE_1__ fd; } ;
struct TYPE_15__ {scalar_t__ num_dimension_constraints; int num_constraints; } ;
struct TYPE_14__ {scalar_t__ num_slices; int /*<<< orphan*/ ** slices; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ Hypercube ;
typedef  int /*<<< orphan*/  DimensionSlice ;
typedef  TYPE_3__ ChunkConstraints ;
typedef  TYPE_4__ ChunkConstraint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

Hypercube *
FUNC8(ChunkConstraints *constraints, MemoryContext mctx)
{
	Hypercube *hc;
	int i;
	MemoryContext old;

	old = FUNC1(mctx);
	hc = FUNC6(constraints->num_dimension_constraints);
	FUNC1(old);

	for (i = 0; i < constraints->num_constraints; i++)
	{
		ChunkConstraint *cc = FUNC2(constraints, i);

		if (FUNC4(cc))
		{
			DimensionSlice *slice;

			FUNC0(hc->num_slices < constraints->num_dimension_constraints);
			slice = FUNC5(cc->fd.dimension_slice_id, mctx);
			FUNC0(slice != NULL);
			hc->slices[hc->num_slices++] = slice;
		}
	}

	FUNC7(hc);

	FUNC0(FUNC3(hc));

	return hc;
}