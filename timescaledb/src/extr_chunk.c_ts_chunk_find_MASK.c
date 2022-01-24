#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  id; } ;
struct TYPE_17__ {TYPE_1__ fd; int /*<<< orphan*/  constraints; } ;
struct TYPE_16__ {int early_abort; } ;
struct TYPE_15__ {int /*<<< orphan*/  num_dimensions; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_2__ Hyperspace ;
typedef  TYPE_3__ ChunkScanCtx ;
typedef  TYPE_4__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_4__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Chunk *
FUNC6(Hyperspace *hs, Point *p)
{
	Chunk *chunk;
	ChunkScanCtx ctx;

	/* The scan context will keep the state accumulated during the scan */
	FUNC4(&ctx, hs, p);

	/* Abort the scan when the chunk is found */
	ctx.early_abort = true;

	/* Scan for the chunk matching the point */
	FUNC1(&ctx, p);

	/* Find the chunk that has N matching dimension constraints */
	chunk = FUNC3(&ctx);

	FUNC2(&ctx);

	if (NULL != chunk)
	{
		/* Fill in the rest of the chunk's data from the chunk table */
		FUNC0(chunk, false);

		/*
		 * When searching for the chunk that matches the point, we only
		 * scanned for dimensional constraints. We now need to rescan the
		 * constraints to also get the inherited constraints.
		 */
		chunk->constraints = FUNC5(chunk->fd.id,
																  hs->num_dimensions,
																  CurrentMemoryContext);
	}

	return chunk;
}