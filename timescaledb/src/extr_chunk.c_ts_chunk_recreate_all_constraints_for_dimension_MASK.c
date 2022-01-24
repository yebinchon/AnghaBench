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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int num_slices; int /*<<< orphan*/ * slices; } ;
typedef  int /*<<< orphan*/  Hyperspace ;
typedef  TYPE_1__ DimensionVec ;
typedef  int /*<<< orphan*/  ChunkScanCtx ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  chunk_recreate_constraint ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(Hyperspace *hs, int32 dimension_id)
{
	DimensionVec *slices;
	ChunkScanCtx chunkctx;
	int i;

	slices = FUNC4(dimension_id, 0);

	if (NULL == slices)
		return;

	FUNC2(&chunkctx, hs, NULL);

	for (i = 0; i < slices->num_slices; i++)
		FUNC3(slices->slices[i],
													&chunkctx,
													CurrentMemoryContext);

	FUNC1(&chunkctx, chunk_recreate_constraint, 0);
	FUNC0(&chunkctx);
}