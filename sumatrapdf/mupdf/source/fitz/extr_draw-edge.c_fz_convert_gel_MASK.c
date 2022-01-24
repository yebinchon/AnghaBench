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
typedef  void fz_solid_color_painter_t ;
typedef  int /*<<< orphan*/  fz_rasterizer ;
struct TYPE_5__ {int /*<<< orphan*/  alpha; int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_overprint ;
typedef  int /*<<< orphan*/  fz_irect ;
typedef  int /*<<< orphan*/  fz_gel ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ fz_aa_bits ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,TYPE_1__*,unsigned char*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,TYPE_1__*,unsigned char*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_rasterizer *rast, int eofill, const fz_irect *clip, fz_pixmap *dst, unsigned char *color, fz_overprint *eop)
{
	fz_gel *gel = (fz_gel *)rast;

	FUNC6(ctx, gel);

	if (fz_aa_bits > 0)
	{
		void *fn;
		if (color)
			fn = (void *)FUNC2(dst->n, dst->alpha, color, eop);
		else
			fn = (void *)FUNC3(dst->alpha, 1, 0, 255, eop);
		FUNC0(fn);
		if (fn == NULL)
			return;
		FUNC4(ctx, gel, eofill, clip, dst, color, fn, eop);
	}
	else
	{
		fz_solid_color_painter_t *fn = FUNC1(dst->n, color, dst->alpha, eop);
		FUNC0(fn);
		if (fn == NULL)
			return;
		FUNC5(ctx, gel, eofill, clip, dst, color, (fz_solid_color_painter_t *)fn, eop);
	}
}