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
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_5__ {float x; float y; } ;
typedef  TYPE_1__ fz_point ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 float FUNC0 (float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__) ; 
 TYPE_1__ FUNC4 (float,float) ; 
 float FUNC5 (int,float) ; 
 TYPE_1__ FUNC6 (float,float,float) ; 

__attribute__((used)) static void FUNC7(fz_context *ctx, fz_buffer *buf, fz_rect *rect, float x, float y, float dx, float dy, float w)
{
	float r = FUNC5(1, w);
	float angle = FUNC0(dy, dx);
	fz_point v, a, b;

	v = FUNC6(angle, 8.8f*r, 4.5f*r);
	a = FUNC4(x + v.x, y + v.y);
	v = FUNC6(angle, 8.8f*r, -4.5f*r);
	b = FUNC4(x + v.x, y + v.y);

	*rect = FUNC3(*rect, a);
	*rect = FUNC3(*rect, b);
	*rect = FUNC2(*rect, w);

	FUNC1(ctx, buf, "%g %g m\n", a.x, a.y);
	FUNC1(ctx, buf, "%g %g l\n", x, y);
	FUNC1(ctx, buf, "%g %g l\n", b.x, b.y);
}