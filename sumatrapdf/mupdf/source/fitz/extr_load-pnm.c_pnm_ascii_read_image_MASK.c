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
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*,int) ; 

__attribute__((used)) static fz_pixmap *
FUNC8(fz_context *ctx, struct info *pnm, const unsigned char *p, const unsigned char *e, int onlymeta, int bitmap, const unsigned char **out)
{
	fz_pixmap *img = NULL;

	p = FUNC6(ctx, p, e, &pnm->width);
	p = FUNC7(ctx, p, e, 0);

	if (bitmap)
	{
		p = FUNC6(ctx, p, e, &pnm->height);
		p = FUNC7(ctx, p, e, 1);
		pnm->maxval = 1;
	}
	else
	{
		p = FUNC6(ctx, p, e, &pnm->height);
		p = FUNC7(ctx, p, e, 0);
		p = FUNC6(ctx, p, e, &pnm->maxval);
		p = FUNC7(ctx, p, e, 0);
	}

	if (pnm->maxval <= 0 || pnm->maxval >= 65536)
		FUNC4(ctx, FZ_ERROR_GENERIC, "maximum sample value of out range in pnm image: %d", pnm->maxval);

	pnm->bitdepth = FUNC0(pnm->maxval);

	if (pnm->height <= 0)
		FUNC4(ctx, FZ_ERROR_GENERIC, "image height must be > 0");
	if (pnm->width <= 0)
		FUNC4(ctx, FZ_ERROR_GENERIC, "image width must be > 0");
	if ((unsigned int)pnm->height > UINT_MAX / pnm->width / FUNC2(ctx, pnm->cs) / (pnm->bitdepth / 8 + 1))
		FUNC4(ctx, FZ_ERROR_GENERIC, "image too large");

	if (onlymeta)
	{
		int x, y, k;
		int w, h, n;

		w = pnm->width;
		h = pnm->height;
		n = FUNC2(ctx, pnm->cs);

		if (bitmap)
		{
			for (y = 0; y < h; y++)
				for (x = -1; x < w; x++)
				{
					p = FUNC6(ctx, p, e, NULL);
					p = FUNC7(ctx, p, e, 0);
				}
		}
		else
		{
			for (y = 0; y < h; y++)
				for (x = 0; x < w; x++)
					for (k = 0; k < n; k++)
					{
						p = FUNC6(ctx, p, e, NULL);
						p = FUNC7(ctx, p, e, 0);
					}
		}
	}
	else
	{
		unsigned char *dp;
		int x, y, k;
		int w, h, n;

		img = FUNC3(ctx, pnm->cs, pnm->width, pnm->height, NULL, 0);
		dp = img->samples;

		w = img->w;
		h = img->h;
		n = img->n;

		if (bitmap)
		{
			for (y = 0; y < h; y++)
			{
				for (x = 0; x < w; x++)
				{
					int v = 0;
					p = FUNC6(ctx, p, e, &v);
					p = FUNC7(ctx, p, e, 0);
					*dp++ = v ? 0x00 : 0xff;
				}
			}
		}
		else
		{
			for (y = 0; y < h; y++)
				for (x = 0; x < w; x++)
					for (k = 0; k < n; k++)
					{
						int v = 0;
						p = FUNC6(ctx, p, e, &v);
						p = FUNC7(ctx, p, e, 0);
						v = FUNC1(v, 0, pnm->maxval);
						*dp++ = FUNC5(ctx, v, pnm->maxval, 255);
					}
		}
	}

	if (out)
		*out = p;

	return img;
}