#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_solid_color_painter_t ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_overprint ;
struct TYPE_13__ {int y0; int y1; } ;
typedef  TYPE_2__ fz_irect ;
struct TYPE_14__ {scalar_t__ alen; int len; TYPE_1__* edges; } ;
typedef  TYPE_3__ fz_gel ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_12__ {int y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int,TYPE_2__ const*,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int,TYPE_2__ const*,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx,
	fz_gel *gel, int eofill, const fz_irect *clip,
	fz_pixmap *dst, unsigned char *color, fz_solid_color_painter_t *fn, fz_overprint *eop)
{
	int e = 0;
	int y = gel->edges[0].y;
	int height;

	gel->alen = 0;

	/* Skip any lines before the clip region */
	if (y < clip->y0)
	{
		while (gel->alen > 0 || e < gel->len)
		{
			height = FUNC2(ctx, gel, y, &e);
			y += height;
			if (y >= clip->y0)
			{
				y = clip->y0;
				break;
			}
		}
	}

	/* Now process as lines within the clip region */
	while (gel->alen > 0 || e < gel->len)
	{
		height = FUNC2(ctx, gel, y, &e);

		if (gel->alen == 0)
			y += height;
		else
		{
			int h;
			if (height >= clip->y1 - y)
				height = clip->y1 - y;

			h = height;
			while (h--)
			{
				if (eofill)
					FUNC1(ctx, gel, y, clip, dst, color, fn, eop);
				else
					FUNC3(ctx, gel, y, clip, dst, color, fn, eop);
				y++;
			}
		}
		if (y >= clip->y1)
			break;

		FUNC0(ctx, gel, height);
	}
}