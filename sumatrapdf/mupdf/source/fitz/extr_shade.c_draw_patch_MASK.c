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
typedef  int /*<<< orphan*/  tensor_patch ;
struct TYPE_4__ {int /*<<< orphan*/  ncomp; } ;
typedef  TYPE_1__ fz_mesh_processor ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_mesh_processor *painter, tensor_patch *p, int depth, int origdepth)
{
	tensor_patch s0, s1;

	/* split patch into two half-width patches */
	FUNC1(p, &s0, &s1, painter->ncomp);

	depth--;
	if (depth == 0)
	{
		/* if no more subdividing, draw two new patches... */
		FUNC0(ctx, painter, &s0, origdepth);
		FUNC0(ctx, painter, &s1, origdepth);
	}
	else
	{
		/* ...otherwise, continue subdividing. */
		FUNC2(ctx, painter, &s0, depth, origdepth);
		FUNC2(ctx, painter, &s1, depth, origdepth);
	}
}