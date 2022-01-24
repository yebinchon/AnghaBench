#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float miterlimit; float linewidth; int linejoin; } ;
typedef  TYPE_1__ sctx ;
typedef  int fz_linejoin ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 float FLT_EPSILON ; 
#define  FZ_LINEJOIN_BEVEL 131 
#define  FZ_LINEJOIN_MITER 130 
#define  FZ_LINEJOIN_MITER_XPS 129 
#define  FZ_LINEJOIN_ROUND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (float,float,float,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,float,float,float,float,float,float,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,float,float,float,float,int) ; 
 float FUNC4 (float) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, sctx *s, float ax, float ay, float bx, float by, float cx, float cy, int join_under)
{
	float miterlimit = s->miterlimit;
	float linewidth = s->linewidth;
	fz_linejoin linejoin = s->linejoin;
	float dx0, dy0;
	float dx1, dy1;
	float dlx0, dly0;
	float dlx1, dly1;
	float dmx, dmy;
	float dmr2;
	float scale;
	float cross;
	int rev = 0;

	dx0 = bx - ax;
	dy0 = by - ay;

	dx1 = cx - bx;
	dy1 = cy - by;

	cross = dx1 * dy0 - dx0 * dy1;
	/* Ensure that cross >= 0 */
	if (cross < 0)
	{
		float tmp;
		tmp = dx1; dx1 = -dx0; dx0 = -tmp;
		tmp = dy1; dy1 = -dy0; dy0 = -tmp;
		cross = -cross;
		rev = !rev;
	}

	if (FUNC1(dx0, dy0, linewidth, &dlx0, &dly0))
		linejoin = FZ_LINEJOIN_BEVEL;

	if (FUNC1(dx1, dy1, linewidth, &dlx1, &dly1))
		linejoin = FZ_LINEJOIN_BEVEL;

	dmx = (dlx0 + dlx1) * 0.5f;
	dmy = (dly0 + dly1) * 0.5f;
	dmr2 = dmx * dmx + dmy * dmy;

	if (cross * cross < FLT_EPSILON && dx0 * dx1 + dy0 * dy1 >= 0)
		linejoin = FZ_LINEJOIN_BEVEL;

	/* XPS miter joins are clipped at miterlength, rather than simply
	 * being converted to bevelled joins. */
	if (linejoin == FZ_LINEJOIN_MITER_XPS)
	{
		if (cross == 0)
			linejoin = FZ_LINEJOIN_BEVEL;
		else if (dmr2 * miterlimit * miterlimit >= linewidth * linewidth)
			linejoin = FZ_LINEJOIN_MITER;
	}
	else if (linejoin == FZ_LINEJOIN_MITER)
		if (dmr2 * miterlimit * miterlimit < linewidth * linewidth)
			linejoin = FZ_LINEJOIN_BEVEL;

	if (join_under)
	{
		FUNC3(ctx, s, bx + dlx1, by + dly1, bx + dlx0, by + dly0, !rev);
	}
	else if (rev)
	{
		FUNC3(ctx, s, bx + dlx1, by + dly1, bx, by, 0);
		FUNC3(ctx, s, bx, by, bx + dlx0, by + dly0, 0);
	}
	else
	{
		FUNC3(ctx, s, bx, by, bx + dlx0, by + dly0, 1);
		FUNC3(ctx, s, bx + dlx1, by + dly1, bx, by, 1);
	}

	switch (linejoin)
	{
	case FZ_LINEJOIN_MITER_XPS:
	{
		float k, t0x, t0y, t1x, t1y;

		scale = linewidth * linewidth / dmr2;
		dmx *= scale;
		dmy *= scale;
		k = (scale - linewidth * miterlimit / FUNC4(dmr2)) / (scale - 1);
		t0x = bx - dmx + k * (dmx - dlx0);
		t0y = by - dmy + k * (dmy - dly0);
		t1x = bx - dmx + k * (dmx - dlx1);
		t1y = by - dmy + k * (dmy - dly1);

		if (rev)
		{
			FUNC3(ctx, s, t1x, t1y, bx - dlx1, by - dly1, 1);
			FUNC3(ctx, s, t0x, t0y, t1x, t1y, 1);
			FUNC3(ctx, s, bx - dlx0, by - dly0, t0x, t0y, 1);
		}
		else
		{
			FUNC3(ctx, s, bx - dlx0, by - dly0, t0x, t0y, 0);
			FUNC3(ctx, s, t0x, t0y, t1x, t1y, 0);
			FUNC3(ctx, s, t1x, t1y, bx - dlx1, by - dly1, 0);
		}
		break;
	}
	case FZ_LINEJOIN_MITER:
		scale = linewidth * linewidth / dmr2;
		dmx *= scale;
		dmy *= scale;

		if (rev)
		{
			FUNC3(ctx, s, bx - dmx, by - dmy, bx - dlx1, by - dly1, 1);
			FUNC3(ctx, s, bx - dlx0, by - dly0, bx - dmx, by - dmy, 1);
		}
		else
		{
			FUNC3(ctx, s, bx - dlx0, by - dly0, bx - dmx, by - dmy, 0);
			FUNC3(ctx, s, bx - dmx, by - dmy, bx - dlx1, by - dly1, 0);
		}
		break;

	case FZ_LINEJOIN_BEVEL:
		FUNC3(ctx, s, bx - dlx0, by - dly0, bx - dlx1, by - dly1, rev);
		break;

	case FZ_LINEJOIN_ROUND:
		FUNC2(ctx, s, bx, by, -dlx0, -dly0, -dlx1, -dly1, rev);
		break;

	default:
		FUNC0("Invalid line join" == NULL);
	}
}