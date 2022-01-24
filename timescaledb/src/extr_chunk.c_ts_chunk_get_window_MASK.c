#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;
struct TYPE_21__ {int /*<<< orphan*/  constraints; int /*<<< orphan*/  cube; TYPE_3__ fd; } ;
struct TYPE_15__ {int /*<<< orphan*/  chunk_id; } ;
struct TYPE_20__ {TYPE_2__ fd; } ;
struct TYPE_19__ {int num_constraints; TYPE_7__* constraints; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; } ;
struct TYPE_18__ {TYPE_1__ fd; } ;
struct TYPE_17__ {int num_slices; TYPE_5__** slices; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_4__ DimensionVec ;
typedef  TYPE_5__ DimensionSlice ;
typedef  TYPE_6__ ChunkConstraints ;
typedef  TYPE_7__ ChunkConstraint ;
typedef  TYPE_8__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  BackwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC8(int32 dimension_id, int64 point, int count, MemoryContext mctx)
{
	List *chunks = NIL;
	DimensionVec *dimvec;
	int i;

	/* Scan for "count" slices that precede the point in the given dimension */
	dimvec = FUNC6(dimension_id,
															   point,
															   count,
															   BackwardScanDirection,
															   mctx);

	/*
	 * For each slice, join with any constraints that reference the slice.
	 * There might be multiple constraints for each slice in case of
	 * multi-dimensional partitioning.
	 */
	for (i = 0; i < dimvec->num_slices; i++)
	{
		DimensionSlice *slice = dimvec->slices[i];
		ChunkConstraints *ccs = FUNC4(1, mctx);
		int j;

		FUNC3(slice->fd.id, ccs, mctx);

		/* For each constraint, find the corresponding chunk */
		for (j = 0; j < ccs->num_constraints; j++)
		{
			ChunkConstraint *cc = &ccs->constraints[j];
			Chunk *chunk = FUNC5(cc->fd.chunk_id, 0, true);
			MemoryContext old;

			chunk->constraints = FUNC2(chunk->fd.id, 1, mctx);
			chunk->cube = FUNC7(chunk->constraints, mctx);

			/* Allocate the list on the same memory context as the chunks */
			old = FUNC0(mctx);
			chunks = FUNC1(chunks, chunk);
			FUNC0(old);
		}
	}

	return chunks;
}