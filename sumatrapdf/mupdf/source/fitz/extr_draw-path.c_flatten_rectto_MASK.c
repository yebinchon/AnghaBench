#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float b; float c; float a; float e; float d; float f; } ;
typedef  TYPE_1__ fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {int /*<<< orphan*/  rast; TYPE_1__ ctm; } ;
typedef  TYPE_2__ flatten_arg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,float,float) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float,float,float,float) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, void *arg_, float x0, float y0, float x1, float y1)
{
	flatten_arg *arg = (flatten_arg *)arg_;
	fz_matrix ctm = arg->ctm;

	FUNC2(ctx, arg_, x0, y0);

	if (FUNC3(ctx, arg->rast))
	{
		/* In the case where we have an axis aligned rectangle, do some
		 * horrid antidropout stuff. */
		if (ctm.b == 0 && ctm.c == 0)
		{
			float tx0 = ctm.a * x0 + ctm.e;
			float ty0 = ctm.d * y0 + ctm.f;
			float tx1 = ctm.a * x1 + ctm.e;
			float ty1 = ctm.d * y1 + ctm.f;
			FUNC4(ctx, arg->rast, tx0, ty0, tx1, ty1);
			return;
		}
		else if (ctm.a == 0 && ctm.d == 0)
		{
			float tx0 = ctm.c * y0 + ctm.e;
			float ty0 = ctm.b * x0 + ctm.f;
			float tx1 = ctm.c * y1 + ctm.e;
			float ty1 = ctm.b * x1 + ctm.f;
			FUNC4(ctx, arg->rast, tx0, ty1, tx1, ty0);
			return;
		}
	}

	FUNC1(ctx, arg_, x1, y0);
	FUNC1(ctx, arg_, x1, y1);
	FUNC1(ctx, arg_, x0, y1);
	FUNC0(ctx, arg_);
}