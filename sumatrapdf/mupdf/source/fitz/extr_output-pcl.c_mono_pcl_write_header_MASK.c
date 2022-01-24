#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int features; } ;
struct TYPE_5__ {int w; int h; int xres; int yres; scalar_t__ alpha; scalar_t__ s; int n; int /*<<< orphan*/ * out; } ;
struct TYPE_6__ {int top_of_page; TYPE_3__ options; scalar_t__ num_blank_lines; void* mode3buf; void* mode2buf; void* prev; TYPE_1__ super; } ;
typedef  TYPE_2__ mono_pcl_band_writer ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_band_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int HACK__IS_A_OCE9050 ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_band_writer *writer_, fz_colorspace *cs)
{
	mono_pcl_band_writer *writer = (mono_pcl_band_writer *)writer_;
	fz_output *out = writer->super.out;
	int w = writer->super.w;
	int h = writer->super.h;
	int xres = writer->super.xres;
	int yres = writer->super.yres;
	int line_size;
	int max_mode_2_size;
	int max_mode_3_size;

	if (writer->super.alpha != 0)
		FUNC1(ctx, FZ_ERROR_GENERIC, "mono PCL cannot write alpha channel");
	if (writer->super.s != 0)
		FUNC1(ctx, FZ_ERROR_GENERIC, "mono PCL cannot write spot colors");
	if (writer->super.n != 1)
		FUNC1(ctx, FZ_ERROR_GENERIC, "mono PCL must be grayscale");

	line_size = (w + 7)/8;
	max_mode_2_size = line_size + (line_size/127) + 1;
	max_mode_3_size = line_size + (line_size/8) + 1;

	writer->prev = FUNC0(ctx, line_size, sizeof(unsigned char));
	writer->mode2buf = FUNC0(ctx, max_mode_2_size, sizeof(unsigned char));
	writer->mode3buf = FUNC0(ctx, max_mode_3_size, sizeof(unsigned char));
	writer->num_blank_lines = 0;
	writer->top_of_page = 1;

	FUNC3(&writer->options, w, h, xres, yres);

	if (writer->options.features & HACK__IS_A_OCE9050)
	{
		/* Enter HPGL/2 mode, begin plot, Initialise (start plot), Enter PCL mode */
		FUNC2(ctx, out, "\033%1BBPIN;\033%1A");
	}

	FUNC4(ctx, out, &writer->options, 1, xres, yres, w, h);
}