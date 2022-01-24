#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int n; int alpha; int /*<<< orphan*/ * colorspace; scalar_t__ seps; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_overprint ;
struct TYPE_14__ {int /*<<< orphan*/  default_cs; } ;
typedef  TYPE_2__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 scalar_t__ FZ_COLORSPACE_CMYK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_pixmap *
FUNC7(fz_context *ctx, fz_pixmap *pixmap, fz_colorspace *model, fz_colorspace *src_cs, fz_pixmap *dest, fz_color_params color_params, fz_draw_device *dev, fz_overprint **eop)
{
	fz_pixmap *converted;

	if (FUNC1(ctx, src_cs) && dest->seps)
	{
		converted = FUNC0(ctx, pixmap, NULL, model, dest->seps, color_params, dev->default_cs);
		*eop = FUNC6(ctx, *eop, dest, src_cs, 0);
	}
	else
	{
		converted = FUNC3(ctx, pixmap, model, NULL, dev->default_cs, color_params, 1);
		if (*eop)
		{
			if (FUNC2(ctx, model) != FZ_COLORSPACE_CMYK)
			{
				/* Can only overprint to CMYK based spaces */
				*eop = NULL;
			}
			else if (!FUNC1(ctx, pixmap->colorspace))
			{
				int i;
				int n = dest->n - dest->alpha;
				for (i = 4; i < n; i++)
					FUNC5(*eop, i);
			}
			else
			{
				*eop = FUNC6(ctx, *eop, dest, src_cs, 0);
			}
		}
	}
	FUNC4(ctx, pixmap);

	return converted;
}