#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int /*<<< orphan*/  fz_identity ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,float const*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_device *dev, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm,
	fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
	svg_device *sdev = (svg_device*)dev;
	fz_output *out = sdev->out;

	FUNC0(ctx, out, "<path");
	FUNC1(ctx, sdev, ctm);
	FUNC4(ctx, sdev, stroke, fz_identity);
	FUNC3(ctx, sdev, colorspace, color, alpha, color_params);
	FUNC2(ctx, sdev, path);
	FUNC0(ctx, out, "/>\n");
}