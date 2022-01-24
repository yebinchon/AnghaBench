#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_output ;
struct TYPE_16__ {float a; float d; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ fz_matrix ;
struct TYPE_17__ {float w; float h; } ;
typedef  TYPE_3__ fz_image ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__ FUNC1 (TYPE_2__,TYPE_2__) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, fz_device *dev, fz_image *image, fz_matrix ctm, fz_rect scissor)
{
	svg_device *sdev = (svg_device*)dev;
	fz_output *out;
	fz_matrix local_ctm = ctm;
	fz_matrix scale = { 0 };
	int mask = sdev->id++;

	scale.a = 1.0f / image->w;
	scale.d = 1.0f / image->h;

	local_ctm = FUNC1(scale, ctm);
	out = FUNC3(ctx, sdev);
	FUNC2(ctx, out, "<mask id=\"ma%d\">\n<g", mask);
	FUNC4(ctx, sdev, local_ctm);
	FUNC2(ctx, out, ">\n");
	FUNC5(ctx, sdev, image, fz_default_color_params/* FIXME */);
	FUNC2(ctx, out, "</g>\n</mask>\n");
	out = FUNC0(ctx, sdev);
	FUNC2(ctx, out, "<g mask=\"url(#ma%d)\">\n", mask);
}