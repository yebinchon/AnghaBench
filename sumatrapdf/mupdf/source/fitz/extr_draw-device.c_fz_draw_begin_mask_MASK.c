#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_irect ;
struct TYPE_7__ {int /*<<< orphan*/  scissor; int /*<<< orphan*/ * group_alpha; int /*<<< orphan*/ * shape; int /*<<< orphan*/ * dest; scalar_t__ blendmode; } ;
typedef  TYPE_1__ fz_draw_state ;
struct TYPE_8__ {scalar_t__ top; int /*<<< orphan*/  transform; int /*<<< orphan*/  default_cs; scalar_t__ resolve_spots; } ;
typedef  TYPE_2__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 

__attribute__((used)) static void
FUNC12(fz_context *ctx, fz_device *devp, fz_rect area, int luminosity, fz_colorspace *colorspace_in, const float *colorfv, fz_color_params color_params)
{
	fz_draw_device *dev = (fz_draw_device*)devp;
	fz_pixmap *dest;
	fz_irect bbox;
	fz_draw_state *state = FUNC11(ctx, dev, "mask");
	fz_pixmap *shape = state->shape;
	fz_pixmap *group_alpha = state->group_alpha;
	fz_rect trect;
	fz_colorspace *colorspace = NULL;

	if (dev->top == 0 && dev->resolve_spots)
		state = FUNC10(ctx, dev, color_params, dev->default_cs);

	if (colorspace_in)
		colorspace = FUNC4(ctx, dev->default_cs, colorspace_in);

	trect = FUNC9(area, dev->transform);
	bbox = FUNC6(FUNC7(trect), state->scissor);

	/* Reset the blendmode for the mask rendering. In particular,
	 * don't carry forward knockout or isolated. */
	state[1].blendmode = 0;

	/* If luminosity, then we generate a mask from the greyscale value of the shapes.
	 * If !luminosity, then we generate a mask from the alpha value of the shapes.
	 */
	if (luminosity)
		state[1].dest = dest = FUNC8(ctx, FUNC5(ctx), bbox, NULL, 0);
	else
		state[1].dest = dest = FUNC8(ctx, NULL, bbox, NULL, 1);
	if (state->shape)
	{
		/* FIXME: If we ever want to support AIS true, then
		 * we probably want to create a shape pixmap here,
		 * using: shape = fz_new_pixmap_with_bbox(NULL, bbox);
		 * then, in the end_mask code, we create the mask
		 * from this rather than dest.
		 */
		state[1].shape = shape = NULL;
	}
	if (state->group_alpha)
	{
		state[1].group_alpha = group_alpha = NULL;
	}

	if (luminosity)
	{
		float bc;
		if (!colorspace)
			colorspace = FUNC5(ctx);
		FUNC3(ctx, colorspace, colorfv, FUNC5(ctx), &bc, NULL, color_params);
		FUNC2(ctx, dest, bc * 255);
		if (shape)
			FUNC2(ctx, shape, 255);
		if (group_alpha)
			FUNC2(ctx, group_alpha, 255);
	}
	else
	{
		FUNC1(ctx, dest);
		if (shape)
			FUNC1(ctx, shape);
		if (group_alpha)
			FUNC1(ctx, group_alpha);
	}

#ifdef DUMP_GROUP_BLENDS
	dump_spaces(dev->top-1, "Mask begin\n");
#endif
	state[1].scissor = bbox;
}