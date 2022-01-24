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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_band_writer ;
struct TYPE_3__ {int w; int h; int n; int s; int alpha; int xres; int yres; int /*<<< orphan*/ * out; } ;
struct TYPE_4__ {int /*<<< orphan*/  options; int /*<<< orphan*/  linebuf; TYPE_1__ super; } ;
typedef  TYPE_2__ color_pcl_band_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
	color_pcl_band_writer *writer = (color_pcl_band_writer *)writer_;
	fz_output *out = writer->super.out;
	int w = writer->super.w;
	int h = writer->super.h;
	int n = writer->super.n;
	int s = writer->super.s;
	int a = writer->super.alpha;
	int xres = writer->super.xres;
	int yres = writer->super.yres;

	if (a != 0)
		FUNC1(ctx, FZ_ERROR_GENERIC, "color PCL cannot write alpha channel");
	if (s != 0)
		FUNC1(ctx, FZ_ERROR_GENERIC, "color PCL cannot write spot colors");
	if (n != 3)
		FUNC1(ctx, FZ_ERROR_GENERIC, "color PCL must be RGB");

	writer->linebuf = FUNC0(ctx, w * 3 * 2);

	FUNC5(&writer->options, w, h, xres, yres);

	FUNC6(ctx, out, &writer->options, 1, xres, yres, w, h);

	/* Raster presentation */
	/* Print in orientation of the logical page */
	FUNC4(ctx, out, "\033&r0F");

	/* Set color mode */
	FUNC2(ctx, out, "\033*v6W"
		"\000"	/* Colorspace 0 = Device RGB */
		"\003"	/* Pixel encoding mode: 3 = Direct by Pixel*/
		"\000"	/* Bits per index: 0 = no palette */
		"\010"	/* Red bits */
		"\010"	/* Green bits */
		"\010",	/* Blue bits */
		11
		);

	/* Raster resolution */
	/* Supposed to be strictly 75, 100, 150, 200, 300, 600 */
	/* FIXME: xres vs yres */
	FUNC3(ctx, out, "\033*t%dR", xres);
}