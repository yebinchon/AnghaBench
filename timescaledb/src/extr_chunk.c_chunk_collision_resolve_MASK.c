#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  int /*<<< orphan*/  Hyperspace ;
typedef  int /*<<< orphan*/  Hypercube ;
typedef  TYPE_1__ ChunkScanCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_collision_resolution ; 
 int /*<<< orphan*/  do_dimension_alignment ; 

__attribute__((used)) static void
FUNC4(Hyperspace *hs, Hypercube *cube, Point *p)
{
	ChunkScanCtx scanctx;

	FUNC3(&scanctx, hs, p);

	/* Scan for all chunks that collide with the hypercube of the new chunk */
	FUNC0(&scanctx, cube);
	scanctx.data = cube;

	/* Cut the hypercube in any aligned dimensions */
	FUNC2(&scanctx, do_dimension_alignment, 0);

	/*
	 * If there are any remaining collisions with chunks, then cut-to-fit to
	 * resolve those collisions
	 */
	FUNC2(&scanctx, do_collision_resolution, 0);

	FUNC1(&scanctx);
}