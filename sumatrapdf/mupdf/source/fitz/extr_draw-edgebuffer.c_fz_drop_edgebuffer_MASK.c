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
struct TYPE_3__ {struct TYPE_3__* table; struct TYPE_3__* index; } ;
typedef  TYPE_1__ fz_edgebuffer ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(fz_context *ctx, fz_rasterizer *r)
{
	fz_edgebuffer *eb = (fz_edgebuffer *)r;

	if (eb)
	{
		FUNC0(ctx, eb->index);
		FUNC0(ctx, eb->table);
	}
	FUNC0(ctx, eb);
}