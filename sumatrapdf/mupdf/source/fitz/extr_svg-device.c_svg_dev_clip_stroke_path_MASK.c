#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
struct TYPE_12__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
typedef  TYPE_2__ fz_rect ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fz_identity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(fz_context *ctx, fz_device *dev, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
	svg_device *sdev = (svg_device*)dev;

	fz_output *out;
	fz_rect bounds;
	int num = sdev->id++;
	float white[3] = { 1, 1, 1 };

	bounds = FUNC1(ctx, path, stroke, ctm);

	out = FUNC4(ctx, sdev);
	FUNC3(ctx, out, "<mask id=\"ma%d\" x=\"%g\" y=\"%g\" width=\"%g\" height=\"%g\" maskUnits=\"userSpaceOnUse\" maskContentUnits=\"userSpaceOnUse\">\n",
		num, bounds.x0, bounds.y0, bounds.x1 - bounds.x0, bounds.y1 - bounds.y0);
	FUNC3(ctx, out, "<path");
	FUNC5(ctx, sdev, ctm);
	FUNC8(ctx, sdev, stroke, fz_identity);
	FUNC7(ctx, sdev, FUNC2(ctx), white, 1, fz_default_color_params);
	FUNC6(ctx, sdev, path);
	FUNC3(ctx, out, "/>\n</mask>\n");
	out = FUNC0(ctx, sdev);
	FUNC3(ctx, out, "<g mask=\"url(#ma%d)\">\n", num);
}