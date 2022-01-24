#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int sn; scalar_t__ dot; scalar_t__ cap; int from_bezier; TYPE_2__* beg; TYPE_1__* seg; scalar_t__ dash_list; int /*<<< orphan*/  linewidth; } ;
typedef  TYPE_3__ sctx ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_10__ {float x; float y; } ;
struct TYPE_9__ {float x; float y; } ;

/* Variables and functions */
 scalar_t__ FZ_LINECAP_ROUND ; 
 scalar_t__ NON_NULL_LINE ; 
 scalar_t__ NULL_LINE ; 
 scalar_t__ ONLY_MOVES ; 
 scalar_t__ FUNC0 (float,float,int /*<<< orphan*/ ,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,float,float,float,float,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,float,float,float,float,float,float,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,float,float,float,float) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, sctx *s, float x, float y, int from_bezier)
{
	float ox = s->seg[s->sn-1].x;
	float oy = s->seg[s->sn-1].y;
	float dx = x - ox;
	float dy = y - oy;
	float dlx, dly;

	if (FUNC0(dx, dy, s->linewidth, &dlx, &dly))
	{
		if (s->dot == ONLY_MOVES && (s->cap == FZ_LINECAP_ROUND || s->dash_list))
			s->dot = NULL_LINE;
		return;
	}
	s->dot = NON_NULL_LINE;

	if (s->sn == 2)
		FUNC3(ctx, s, s->seg[0].x, s->seg[0].y, ox, oy, x, y, s->from_bezier & from_bezier);

#if 1
	if (0 && dx == 0)
	{
		FUNC4(ctx, s, ox - dlx, oy, x + dlx, y);
	}
	else if (dy == 0)
	{
		FUNC1(ctx, s, ox, oy - dly, x, y + dly);
	}
	else
#endif
	{

		FUNC2(ctx, s, ox - dlx, oy - dly, x - dlx, y - dly, 0);
		FUNC2(ctx, s, x + dlx, y + dly, ox + dlx, oy + dly, 1);
	}

	if (s->sn == 2)
	{
		s->seg[0] = s->seg[1];
		s->seg[1].x = x;
		s->seg[1].y = y;
	}
	else
	{
		s->seg[1].x = s->beg[1].x = x;
		s->seg[1].y = s->beg[1].y = y;
		s->sn = 2;
	}
	s->from_bezier = from_bezier;
}