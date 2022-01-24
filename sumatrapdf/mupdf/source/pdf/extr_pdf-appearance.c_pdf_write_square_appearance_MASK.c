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
typedef  int /*<<< orphan*/  pdf_annot ;
struct TYPE_3__ {float x0; float y0; float x1; float y1; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_annot *annot, fz_buffer *buf, fz_rect *rect)
{
	float x, y, w, h;
	float lw;
	int sc;
	int ic;

	lw = FUNC2(ctx, annot, buf);
	sc = FUNC4(ctx, annot, buf);
	ic = FUNC3(ctx, annot, buf);

	x = rect->x0 + lw;
	y = rect->y0 + lw;
	w = rect->x1 - x - lw;
	h = rect->y1 - y - lw;

	FUNC0(ctx, buf, "%g %g %g %g re\n", x, y, w, h);
	FUNC1(ctx, buf, sc, ic);
}