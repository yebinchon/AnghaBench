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
typedef  int /*<<< orphan*/  fz_rasterizer ;
struct TYPE_3__ {struct TYPE_3__* deltas; struct TYPE_3__* alphas; struct TYPE_3__* edges; struct TYPE_3__* active; } ;
typedef  TYPE_1__ fz_gel ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, fz_rasterizer *rast)
{
	fz_gel *gel = (fz_gel *)rast;
	if (gel == NULL)
		return;
	FUNC0(ctx, gel->active);
	FUNC0(ctx, gel->edges);
	FUNC0(ctx, gel->alphas);
	FUNC0(ctx, gel->deltas);
	FUNC0(ctx, gel);
}