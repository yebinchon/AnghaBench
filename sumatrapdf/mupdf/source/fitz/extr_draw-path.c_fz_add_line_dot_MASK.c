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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FZ_PI ; 
 int FZ_SQRT2 ; 
 int FUNC0 (int) ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,float,float,float,float,int /*<<< orphan*/ ) ; 
 float FUNC3 (float) ; 
 int FUNC4 (float) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, sctx *s, float ax, float ay)
{
	float flatness = s->flatness;
	float linewidth = s->linewidth;
	int n = FUNC0(FZ_PI / (FZ_SQRT2 * FUNC4(flatness / linewidth)));
	float ox = ax - linewidth;
	float oy = ay;
	int i;

	if (n < 3)
		n = 3;
	for (i = 1; i < n; i++)
	{
		float theta = FZ_PI * 2 * i / n;
		float cth = FUNC1(theta);
		float sth = FUNC3(theta);
		float nx = ax - cth * linewidth;
		float ny = ay + sth * linewidth;
		FUNC2(ctx, s, ox, oy, nx, ny, 0);
		ox = nx;
		oy = ny;
	}

	FUNC2(ctx, s, ox, oy, ax - linewidth, ay, 0);
}