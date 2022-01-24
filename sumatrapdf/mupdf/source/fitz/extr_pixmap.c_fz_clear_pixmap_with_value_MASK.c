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
struct TYPE_3__ {int alpha; int w; int h; unsigned char* samples; int stride; int n; int /*<<< orphan*/  s; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,unsigned int) ; 

void
FUNC3(fz_context *ctx, fz_pixmap *pix, int value)
{
	unsigned char *s;
	int w, h, n, stride, len;
	int alpha = pix->alpha;

	w = pix->w;
	h = pix->h;
	if (w < 0 || h < 0)
		return;

	/* CMYK needs special handling (and potentially any other subtractive colorspaces) */
	if (FUNC1(ctx, pix->colorspace) == 4)
	{
		FUNC0(pix->samples, w, h, pix->s, pix->stride, 255-value, pix->alpha);
		return;
	}

	n = pix->n;
	stride = pix->stride;
	len = w * n;

	s = pix->samples;
	if (value == 255 || !alpha)
	{
		if (stride == len)
		{
			len *= h;
			h = 1;
		}
		while (h--)
		{
			FUNC2(s, value, (unsigned int)len);
			s += stride;
		}
	}
	else
	{
		int k, x, y;
		stride -= len;
		for (y = 0; y < pix->h; y++)
		{
			for (x = 0; x < pix->w; x++)
			{
				for (k = 0; k < pix->n - 1; k++)
					*s++ = value;
				if (alpha)
					*s++ = 255;
			}
			s += stride;
		}
	}
}