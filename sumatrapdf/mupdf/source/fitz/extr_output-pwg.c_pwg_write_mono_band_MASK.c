#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int w; int h; int /*<<< orphan*/ * out; } ;
struct TYPE_4__ {TYPE_1__ super; } ;
typedef  TYPE_2__ pwg_band_writer ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_band_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ FUNC3 (unsigned char const*,unsigned char const*,int) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_band_writer *writer_, int stride, int band_start, int band_height, const unsigned char *samples)
{
	pwg_band_writer *writer = (pwg_band_writer *)writer_;
	fz_output *out = writer->super.out;
	int w = writer->super.w;
	int h = writer->super.h;
	const unsigned char *sp;
	int y, x;
	int byte_width;

	/* Now output the actual bitmap, using a packbits like compression */
	sp = samples;
	byte_width = (w+7)/8;
	y = 0;
	while (y < band_height)
	{
		int yrep;

		FUNC0(sp == samples + y * stride);

		/* Count the number of times this line is repeated */
		for (yrep = 1; yrep < 256 && y+yrep < h; yrep++)
		{
			if (FUNC3(sp, sp + yrep * stride, byte_width) != 0)
				break;
		}
		FUNC1(ctx, out, yrep-1);

		/* Encode the line */
		x = 0;
		while (x < byte_width)
		{
			int d;

			FUNC0(sp == samples + y * stride + x);

			/* How far do we have to look to find a repeated value? */
			for (d = 1; d < 128 && x+d < byte_width; d++)
			{
				if (sp[d-1] == sp[d])
					break;
			}
			if (d == 1)
			{
				int xrep;

				/* We immediately have a repeat (or we've hit
				 * the end of the line). Count the number of
				 * times this value is repeated. */
				for (xrep = 1; xrep < 128 && x+xrep < byte_width; xrep++)
				{
					if (sp[0] != sp[xrep])
						break;
				}
				FUNC1(ctx, out, xrep-1);
				FUNC2(ctx, out, sp, 1);
				sp += xrep;
				x += xrep;
			}
			else
			{
				FUNC1(ctx, out, 257-d);
				FUNC2(ctx, out, sp, d);
				sp += d;
				x += d;
			}
		}

		/* Move to the next line */
		sp += stride*yrep - byte_width;
		y += yrep;
	}
}