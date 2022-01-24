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
struct TYPE_4__ {float flatness; float linewidth; } ;
typedef  TYPE_1__ sctx ;
typedef  int fz_linecap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  FZ_LINECAP_BUTT 131 
#define  FZ_LINECAP_ROUND 130 
#define  FZ_LINECAP_SQUARE 129 
#define  FZ_LINECAP_TRIANGLE 128 
 float FZ_PI ; 
 float FZ_SQRT2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (float) ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,float,float,float,float,int) ; 
 float FUNC4 (float) ; 
 float FUNC5 (float) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, sctx *s, float ax, float ay, float bx, float by, fz_linecap linecap, int rev)
{
	float flatness = s->flatness;
	float linewidth = s->linewidth;

	float dx = bx - ax;
	float dy = by - ay;

	float scale = linewidth / FUNC5(dx * dx + dy * dy);
	float dlx = dy * scale;
	float dly = -dx * scale;

	switch (linecap)
	{
	case FZ_LINECAP_BUTT:
		FUNC3(ctx, s, bx - dlx, by - dly, bx + dlx, by + dly, rev);
		break;

	case FZ_LINECAP_ROUND:
	{
		int i;
		int n = FUNC1(FZ_PI / (2.0f * FZ_SQRT2 * FUNC5(flatness / linewidth)));
		float ox = bx - dlx;
		float oy = by - dly;
		for (i = 1; i < n; i++)
		{
			float theta = FZ_PI * i / n;
			float cth = FUNC2(theta);
			float sth = FUNC4(theta);
			float nx = bx - dlx * cth - dly * sth;
			float ny = by - dly * cth + dlx * sth;
			FUNC3(ctx, s, ox, oy, nx, ny, rev);
			ox = nx;
			oy = ny;
		}
		FUNC3(ctx, s, ox, oy, bx + dlx, by + dly, rev);
		break;
	}

	case FZ_LINECAP_SQUARE:
		FUNC3(ctx, s, bx - dlx, by - dly,
			bx - dlx - dly, by - dly + dlx, rev);
		FUNC3(ctx, s, bx - dlx - dly, by - dly + dlx,
			bx + dlx - dly, by + dly + dlx, rev);
		FUNC3(ctx, s, bx + dlx - dly, by + dly + dlx,
			bx + dlx, by + dly, rev);
		break;

	case FZ_LINECAP_TRIANGLE:
	{
		float mx = -dly;
		float my = dlx;
		FUNC3(ctx, s, bx - dlx, by - dly, bx + mx, by + my, rev);
		FUNC3(ctx, s, bx + mx, by + my, bx + dlx, by + dly, rev);
		break;
	}

	default:
		FUNC0("Invalid line cap" == NULL);
	}
}