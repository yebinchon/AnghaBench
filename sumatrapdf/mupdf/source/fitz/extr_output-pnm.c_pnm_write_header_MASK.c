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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
struct TYPE_3__ {int w; int h; int n; int alpha; scalar_t__ s; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ fz_band_writer ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_band_writer *writer, fz_colorspace *cs)
{
	fz_output *out = writer->out;
	int w = writer->w;
	int h = writer->h;
	int n = writer->n;
	int alpha = writer->alpha;

	if (writer->s != 0)
		FUNC0(ctx, FZ_ERROR_GENERIC, "PNM writer cannot cope with spot colors");

	if (alpha)
		FUNC0(ctx, FZ_ERROR_GENERIC, "PNM writer cannot cope with alpha");

	n -= alpha;
	if (n != 1 && n != 3)
		FUNC0(ctx, FZ_ERROR_GENERIC, "pixmap must be grayscale or rgb to write as pnm");

	if (n == 1)
		FUNC1(ctx, out, "P5\n");
	if (n == 3)
		FUNC1(ctx, out, "P6\n");
	FUNC1(ctx, out, "%d %d\n", w, h);
	FUNC1(ctx, out, "255\n");
}