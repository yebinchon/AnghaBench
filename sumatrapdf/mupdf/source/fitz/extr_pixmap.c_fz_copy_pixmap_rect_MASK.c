#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int stride; unsigned char* samples; int y; int n; int x; int w; int h; } ;
typedef  TYPE_1__ fz_pixmap ;
struct TYPE_12__ {int x1; int x0; int y1; int y0; } ;
typedef  TYPE_2__ fz_irect ;
typedef  int /*<<< orphan*/  fz_default_colorspaces ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 TYPE_2__ FUNC1 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

void
FUNC4(fz_context *ctx, fz_pixmap *dest, fz_pixmap *src, fz_irect b, const fz_default_colorspaces *default_cs)
{
	unsigned char *srcp;
	unsigned char *destp;
	int y, w, destspan, srcspan;

	b = FUNC1(b, FUNC2(ctx, dest));
	b = FUNC1(b, FUNC2(ctx, src));
	w = b.x1 - b.x0;
	y = b.y1 - b.y0;
	if (w <= 0 || y <= 0)
		return;

	srcspan = src->stride;
	srcp = src->samples + (unsigned int)(srcspan * (b.y0 - src->y) + src->n * (b.x0 - src->x));
	destspan = dest->stride;
	destp = dest->samples + (unsigned int)(destspan * (b.y0 - dest->y) + dest->n * (b.x0 - dest->x));

	if (src->n == dest->n)
	{
		w *= src->n;
		do
		{
			FUNC3(destp, srcp, w);
			srcp += srcspan;
			destp += destspan;
		}
		while (--y);
	}
	else
	{
		fz_pixmap fake_src = *src;
		fake_src.x = b.x0;
		fake_src.y = b.y0;
		fake_src.w = w;
		fake_src.h = y;
		fake_src.samples = srcp;
		FUNC0(ctx, dest, &fake_src, NULL, default_cs, fz_default_color_params, 0);
	}
}