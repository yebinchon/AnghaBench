#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  depth; int /*<<< orphan*/ * out; } ;
typedef  TYPE_6__ fz_trace_device ;
struct TYPE_12__ {int /*<<< orphan*/ ** coords; int /*<<< orphan*/ * extend; } ;
struct TYPE_10__ {int /*<<< orphan*/  f; int /*<<< orphan*/  e; int /*<<< orphan*/  d; int /*<<< orphan*/  c; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
struct TYPE_11__ {int /*<<< orphan*/  ydivs; int /*<<< orphan*/  xdivs; int /*<<< orphan*/ ** domain; TYPE_2__ matrix; } ;
struct TYPE_13__ {TYPE_4__ l_or_r; TYPE_3__ f; } ;
struct TYPE_9__ {int /*<<< orphan*/  f; int /*<<< orphan*/  e; int /*<<< orphan*/  d; int /*<<< orphan*/  c; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
struct TYPE_15__ {int type; TYPE_5__ u; int /*<<< orphan*/  colorspace; TYPE_1__ matrix; } ;
typedef  TYPE_7__ fz_shade ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
#define  FZ_FUNCTION_BASED 130 
#define  FZ_LINEAR 129 
#define  FZ_RADIAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_device *dev_, fz_shade *shade, fz_matrix ctm, float alpha, fz_color_params color_params)
{
	fz_trace_device *dev = (fz_trace_device*)dev_;
	fz_output *out = dev->out;
	FUNC1(ctx, out, dev->depth);
	FUNC3(ctx, out, "<fill_shade alpha=\"%g\"", alpha);
	FUNC2(ctx, out, ctm);
	FUNC3(ctx, out, " pattern_matrix=\"%g %g %g %g %g %g\"",
		shade->matrix.a,
		shade->matrix.b,
		shade->matrix.c,
		shade->matrix.d,
		shade->matrix.e,
		shade->matrix.f);
	FUNC3(ctx, out, " colorspace=\"%s\"", FUNC0(ctx, shade->colorspace));
	// TODO: use_background and background
	// TODO: use_function and function
	switch (shade->type)
	{
	case FZ_FUNCTION_BASED:
		FUNC3(ctx, out, " type=\"function\"");
		FUNC3(ctx, out, " function_matrix=\"%g %g %g %g %g %g\"",
			shade->u.f.matrix.a,
			shade->u.f.matrix.b,
			shade->u.f.matrix.c,
			shade->u.f.matrix.d,
			shade->u.f.matrix.e,
			shade->u.f.matrix.f);
		FUNC3(ctx, out, " domain=\"%g %g %g %g\"",
			shade->u.f.domain[0][0],
			shade->u.f.domain[0][1],
			shade->u.f.domain[1][0],
			shade->u.f.domain[1][1]);
		FUNC3(ctx, out, " samples=\"%d %d\"",
			shade->u.f.xdivs,
			shade->u.f.ydivs);
		FUNC3(ctx, out, "/>\n");
		break;
	case FZ_LINEAR:
		FUNC3(ctx, out, " type=\"linear\"");
		FUNC3(ctx, out, " extend=\"%d %d\"",
			shade->u.l_or_r.extend[0],
			shade->u.l_or_r.extend[1]);
		FUNC3(ctx, out, " start=\"%g %g\"",
			shade->u.l_or_r.coords[0][0],
			shade->u.l_or_r.coords[0][1]);
		FUNC3(ctx, out, " end=\"%g %g\"",
			shade->u.l_or_r.coords[1][0],
			shade->u.l_or_r.coords[1][1]);
		FUNC3(ctx, out, "/>\n");
		break;
	case FZ_RADIAL:
		FUNC3(ctx, out, " type=\"radial\"");
		FUNC3(ctx, out, " extend=\"%d %d\"",
			shade->u.l_or_r.extend[0],
			shade->u.l_or_r.extend[1]);
		FUNC3(ctx, out, " inner=\"%g %g %g\"",
			shade->u.l_or_r.coords[0][0],
			shade->u.l_or_r.coords[0][1],
			shade->u.l_or_r.coords[0][2]);
		FUNC3(ctx, out, " outer=\"%g %g %g\"",
			shade->u.l_or_r.coords[1][0],
			shade->u.l_or_r.coords[1][1],
			shade->u.l_or_r.coords[1][2]);
		FUNC3(ctx, out, "/>\n");
		break;
	default:
		FUNC3(ctx, out, " type=\"mesh\"/>\n");
		break;
	}
}