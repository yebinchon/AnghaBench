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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__ fz_empty_rect ; 
 void* FUNC0 (float,float) ; 
 void* FUNC1 (float,float) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

fz_rect
FUNC4(fz_context *ctx, pdf_obj *array)
{
	if (!FUNC3(ctx, array))
		return fz_empty_rect;
	else
	{
		float a = FUNC2(ctx, array, 0);
		float b = FUNC2(ctx, array, 1);
		float c = FUNC2(ctx, array, 2);
		float d = FUNC2(ctx, array, 3);
		fz_rect r;
		r.x0 = FUNC1(a, c);
		r.y0 = FUNC1(b, d);
		r.x1 = FUNC0(a, c);
		r.y1 = FUNC0(b, d);
		return r;
	}
}