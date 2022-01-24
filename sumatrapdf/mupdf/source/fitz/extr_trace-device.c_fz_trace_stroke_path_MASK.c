#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  depth; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ fz_trace_device ;
struct TYPE_6__ {int dash_len; int /*<<< orphan*/ * dash_list; int /*<<< orphan*/  dash_phase; int /*<<< orphan*/  linejoin; int /*<<< orphan*/  end_cap; int /*<<< orphan*/  dash_cap; int /*<<< orphan*/  start_cap; int /*<<< orphan*/  miterlimit; int /*<<< orphan*/  linewidth; } ;
typedef  TYPE_2__ fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_device *dev_, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm,
	fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
	fz_trace_device *dev = (fz_trace_device*)dev_;
	fz_output *out = dev->out;
	int i;

	FUNC1(ctx, out, dev->depth);
	FUNC4(ctx, out, "<stroke_path");
	FUNC4(ctx, out, " linewidth=\"%g\"", stroke->linewidth);
	FUNC4(ctx, out, " miterlimit=\"%g\"", stroke->miterlimit);
	FUNC4(ctx, out, " linecap=\"%d,%d,%d\"", stroke->start_cap, stroke->dash_cap, stroke->end_cap);
	FUNC4(ctx, out, " linejoin=\"%d\"", stroke->linejoin);

	if (stroke->dash_len)
	{
		FUNC4(ctx, out, " dash_phase=\"%g\" dash=\"", stroke->dash_phase);
		for (i = 0; i < stroke->dash_len; i++)
			FUNC4(ctx, out, "%s%g", i > 0 ? " " : "", stroke->dash_list[i]);
		FUNC4(ctx, out, "\"");
	}

	FUNC0(ctx, out, colorspace, color, alpha);
	FUNC2(ctx, out, ctm);
	FUNC4(ctx, out, ">\n");

	FUNC3(ctx, dev, path);

	FUNC1(ctx, out, dev->depth);
	FUNC4(ctx, out, "</stroke_path>\n");
}