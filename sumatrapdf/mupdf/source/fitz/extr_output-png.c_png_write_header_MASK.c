#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int w; int h; int n; int alpha; scalar_t__ s; int /*<<< orphan*/ * out; } ;
struct TYPE_5__ {TYPE_1__ super; } ;
typedef  TYPE_2__ png_band_writer ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_band_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
	png_band_writer *writer = (png_band_writer *)(void *)writer_;
	fz_output *out = writer->super.out;
	int w = writer->super.w;
	int h = writer->super.h;
	int n = writer->super.n;
	int alpha = writer->super.alpha;
	static const unsigned char pngsig[8] = { 137, 80, 78, 71, 13, 10, 26, 10 };
	unsigned char head[13];
	int color;

	if (writer->super.s != 0)
		FUNC1(ctx, FZ_ERROR_GENERIC, "PNGs cannot contain spot colors");

	/* Treat alpha only as greyscale */
	if (n == 1 && alpha)
		alpha = 0;

	switch (n - alpha)
	{
	case 1: color = (alpha ? 4 : 0); break; /* 0 = Greyscale, 4 = Greyscale + Alpha */
	case 3: color = (alpha ? 6 : 2); break; /* 2 = RGB, 6 = RGBA */
	default:
		FUNC1(ctx, FZ_ERROR_GENERIC, "pixmap must be grayscale or rgb to write as png");
	}

	FUNC0(head+0, w);
	FUNC0(head+4, h);
	head[8] = 8; /* depth */
	head[9] = color;
	head[10] = 0; /* compression */
	head[11] = 0; /* filter */
	head[12] = 0; /* interlace */

	FUNC2(ctx, out, pngsig, 8);
	FUNC4(ctx, out, "IHDR", head, 13);

	FUNC3(ctx, writer, cs);
}