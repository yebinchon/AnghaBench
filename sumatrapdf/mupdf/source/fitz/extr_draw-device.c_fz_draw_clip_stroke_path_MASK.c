#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {float linewidth; } ;
typedef  TYPE_1__ fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  void* fz_irect ;
struct TYPE_16__ {void* scissor; int /*<<< orphan*/  blendmode; TYPE_8__* mask; TYPE_8__* group_alpha; TYPE_8__* shape; TYPE_8__* dest; } ;
typedef  TYPE_2__ fz_draw_state ;
struct TYPE_17__ {size_t top; int /*<<< orphan*/  default_cs; int /*<<< orphan*/  transform; scalar_t__ resolve_spots; TYPE_2__* stack; int /*<<< orphan*/ * rast; } ;
typedef  TYPE_3__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
struct TYPE_18__ {int alpha; int /*<<< orphan*/ * seps; int /*<<< orphan*/ * colorspace; } ;

/* Variables and functions */
 float FLT_EPSILON ; 
 int /*<<< orphan*/  FZ_BLEND_ISOLATED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_8__*,TYPE_8__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ ,float,float,void**,void**) ; 
 void* FUNC6 (void*,void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 float FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 float FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,char*) ; 

__attribute__((used)) static void
FUNC17(fz_context *ctx, fz_device *devp, const fz_path *path, const fz_stroke_state *stroke, fz_matrix in_ctm, fz_rect scissor)
{
	fz_draw_device *dev = (fz_draw_device*)devp;
	fz_matrix ctm = FUNC2(in_ctm, dev->transform);
	fz_rasterizer *rast = dev->rast;

	float expansion = FUNC9(ctm);
	float flatness;
	float linewidth = stroke->linewidth;
	fz_irect bbox;
	fz_draw_state *state = &dev->stack[dev->top];
	fz_colorspace *model;
	float aa_level = 2.0f/(FUNC12(rast)+2);
	float mlw = FUNC13(rast);

	if (dev->top == 0 && dev->resolve_spots)
		state = FUNC15(ctx, dev, fz_default_color_params /* FIXME */, dev->default_cs);

	if (mlw > aa_level)
		aa_level = mlw;
	if (expansion < FLT_EPSILON)
		expansion = 1;
	if (linewidth * expansion < aa_level)
		linewidth = aa_level / expansion;
	flatness = 0.3f / expansion;
	if (flatness < 0.001f)
		flatness = 0.001f;

	state = FUNC16(ctx, dev, "clip stroke");

	model = state->dest->colorspace;

	if (!FUNC8(scissor))
	{
		bbox = FUNC7(FUNC14(scissor, dev->transform));
		bbox = FUNC6(bbox, FUNC11(ctx, state->dest));
		bbox = FUNC6(bbox, state->scissor);
	}
	else
	{
		bbox = FUNC6(FUNC11(ctx, state->dest), state->scissor);
	}

	if (FUNC5(ctx, rast, path, stroke, ctm, flatness, linewidth, &bbox, &bbox))
	{
		state[1].scissor = bbox;
		state[1].mask = NULL;
#ifdef DUMP_GROUP_BLENDS
		dump_spaces(dev->top-1, "Clip (stroke, empty) begin\n");
#endif
		return;
	}

	state[1].mask = FUNC10(ctx, NULL, bbox, NULL, 1);
	FUNC1(ctx, state[1].mask);
	/* When there is no alpha in the current destination (state[0].dest->alpha == 0)
	 * we have a choice. We can either create the new destination WITH alpha, or
	 * we can copy the old pixmap contents in. We opt for the latter here, but
	 * may want to revisit this decision in the future. */
	state[1].dest = FUNC10(ctx, model, bbox, state[0].dest->seps, state[0].dest->alpha);
	if (state[0].dest->alpha)
		FUNC1(ctx, state[1].dest);
	else
		FUNC4(ctx, state[1].dest, state[0].dest, bbox, dev->default_cs);
	if (state->shape)
	{
		state[1].shape = FUNC10(ctx, NULL, bbox, NULL, 1);
		FUNC1(ctx, state[1].shape);
	}
	if (state->group_alpha)
	{
		state[1].group_alpha = FUNC10(ctx, NULL, bbox, NULL, 1);
		FUNC1(ctx, state[1].group_alpha);
	}

	FUNC3(ctx, rast, 0, state[1].mask, NULL, 0);

	state[1].blendmode |= FZ_BLEND_ISOLATED;
	state[1].scissor = bbox;

#ifdef DUMP_GROUP_BLENDS
	dump_spaces(dev->top-1, "Clip (stroke) begin\n");
#endif
}