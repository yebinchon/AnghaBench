#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int stride; unsigned char* samples; int y; int n; int x; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
struct TYPE_9__ {int x1; int x0; int y1; int y0; } ;
typedef  TYPE_2__ fz_irect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC1 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,unsigned int) ; 

void
FUNC4(fz_context *ctx, fz_pixmap *dest, int value, fz_irect b)
{
	unsigned char *destp;
	int x, y, w, k, destspan;

	b = FUNC1(b, FUNC2(ctx, dest));
	w = b.x1 - b.x0;
	y = b.y1 - b.y0;
	if (w <= 0 || y <= 0)
		return;

	destspan = dest->stride;
	destp = dest->samples + (unsigned int)(destspan * (b.y0 - dest->y) + dest->n * (b.x0 - dest->x));

	/* CMYK needs special handling (and potentially any other subtractive colorspaces) */
	if (FUNC0(ctx, dest->colorspace) == 4)
	{
		value = 255 - value;
		do
		{
			unsigned char *s = destp;
			for (x = 0; x < w; x++)
			{
				*s++ = 0;
				*s++ = 0;
				*s++ = 0;
				*s++ = value;
				*s++ = 255;
			}
			destp += destspan;
		}
		while (--y);
		return;
	}

	if (value == 255)
	{
		do
		{
			FUNC3(destp, 255, (unsigned int)(w * dest->n));
			destp += destspan;
		}
		while (--y);
	}
	else
	{
		do
		{
			unsigned char *s = destp;
			for (x = 0; x < w; x++)
			{
				for (k = 0; k < dest->n - 1; k++)
					*s++ = value;
				*s++ = 255;
			}
			destp += destspan;
		}
		while (--y);
	}
}