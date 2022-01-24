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
struct info {int width; int height; int maxval; int bitdepth; int /*<<< orphan*/  cs; } ;
struct TYPE_4__ {unsigned char* samples; int w; int h; int n; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int UINT_MAX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ *,unsigned char const,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,int) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int) ; 

__attribute__((used)) static fz_pixmap *
FUNC8(fz_context *ctx, struct info *pnm, const unsigned char *p, const unsigned char *e, int onlymeta, int bitmap, const unsigned char **out)
{
	fz_pixmap *img = NULL;

	pnm->width = 0;
	p = FUNC6(ctx, p, e, &pnm->width);
	p = FUNC7(ctx, p, e, 0);

	if (bitmap)
	{
		pnm->height = 0;
		p = FUNC6(ctx, p, e, &pnm->height);
		p = FUNC7(ctx, p, e, 1);
		pnm->maxval = 1;
	}
	else
	{
		pnm->height = 0;
		p = FUNC6(ctx, p, e, &pnm->height);
		p = FUNC7(ctx, p, e, 0);
		pnm->maxval = 0;
		p = FUNC6(ctx, p, e, &pnm->maxval);
		p = FUNC7(ctx, p, e, 1);
	}

	if (pnm->maxval <= 0 || pnm->maxval >= 65536)
		FUNC3(ctx, FZ_ERROR_GENERIC, "maximum sample value of out range in pnm image: %d", pnm->maxval);

	pnm->bitdepth = FUNC0(pnm->maxval);

	if (pnm->height <= 0)
		FUNC3(ctx, FZ_ERROR_GENERIC, "image height must be > 0");
	if (pnm->width <= 0)
		FUNC3(ctx, FZ_ERROR_GENERIC, "image width must be > 0");
	if ((unsigned int)pnm->height > UINT_MAX / pnm->width / FUNC1(ctx, pnm->cs) / (pnm->bitdepth / 8 + 1))
		FUNC3(ctx, FZ_ERROR_GENERIC, "image too large");

	if (onlymeta)
	{
		int w = pnm->width;
		int h = pnm->height;
		int n = FUNC1(ctx, pnm->cs);

		if (pnm->maxval == 255)
			p += n * w * h;
		else if (bitmap)
			p += ((w + 7) / 8) * h;
		else if (pnm->maxval < 255)
			p += n * w * h;
		else
			p += 2 * n * w * h;
	}
	else
	{
		unsigned char *dp;
		int x, y, k;
		int w, h, n;

		img = FUNC2(ctx, pnm->cs, pnm->width, pnm->height, NULL, 0);
		dp = img->samples;

		w = img->w;
		h = img->h;
		n = img->n;

		if (pnm->maxval == 255)
		{
			FUNC5(dp, p, w * h * n);
			p += n * w * h;
		}
		else if (bitmap)
		{
			for (y = 0; y < h; y++)
			{
				for (x = 0; x < w; x++)
				{
					*dp++ = (*p & (1 << (7 - (x & 0x7)))) ? 0x00 : 0xff;
					if ((x & 0x7) == 7)
						p++;
				}
				if (w & 0x7)
					p++;
			}
		}
		else if (pnm->maxval < 255)
		{
			for (y = 0; y < h; y++)
				for (x = 0; x < w; x++)
					for (k = 0; k < n; k++)
						*dp++ = FUNC4(ctx, *p++, pnm->maxval, 255);
		}
		else
		{
			for (y = 0; y < h; y++)
				for (x = 0; x < w; x++)
					for (k = 0; k < n; k++)
					{
						*dp++ = FUNC4(ctx, (p[0] << 8) | p[1], pnm->maxval, 255);
						p += 2;
					}
		}
	}

	if (out)
		*out = p;

	return img;
}