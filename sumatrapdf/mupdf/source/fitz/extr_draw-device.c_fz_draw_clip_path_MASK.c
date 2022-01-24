#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  void* fz_irect ;
struct TYPE_10__ {void* scissor; int /*<<< orphan*/ * mask; int /*<<< orphan*/ * group_alpha; int /*<<< orphan*/ * shape; TYPE_7__* dest; } ;
typedef  TYPE_1__ fz_draw_state ;
struct TYPE_11__ {size_t top; int /*<<< orphan*/  default_cs; int /*<<< orphan*/  transform; scalar_t__ resolve_spots; TYPE_1__* stack; int /*<<< orphan*/ * rast; } ;
typedef  TYPE_2__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
struct TYPE_12__ {int alpha; int /*<<< orphan*/ * seps; int /*<<< orphan*/ * colorspace; } ;

/* Variables and functions */
 float FLT_EPSILON ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_7__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,float,void**,void**) ; 
 void* FUNC6 (void*,void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int) ; 
 void* FUNC12 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 

__attribute__((used)) static void
FUNC16(fz_context *ctx, fz_device *devp, const fz_path *path, int even_odd, fz_matrix in_ctm, fz_rect scissor)
{
	fz_draw_device *dev = (fz_draw_device*)devp;
	fz_matrix ctm = FUNC2(in_ctm, dev->transform);
	fz_rasterizer *rast = dev->rast;

	float expansion = FUNC10(ctm);
	float flatness;
	fz_irect bbox;
	fz_draw_state *state = &dev->stack[dev->top];
	fz_colorspace *model;

	if (dev->top == 0 && dev->resolve_spots)
		state = FUNC14(ctx, dev, fz_default_color_params /* FIXME */, dev->default_cs);

	if (expansion < FLT_EPSILON)
		expansion = 1;
	flatness = 0.3f / expansion;
	if (flatness < 0.001f)
		flatness = 0.001f;

	state = FUNC15(ctx, dev, "clip path");

	model = state->dest->colorspace;

	if (!FUNC8(scissor))
	{
		bbox = FUNC7(FUNC13(scissor, dev->transform));
		bbox = FUNC6(bbox, FUNC12(ctx, state->dest));
		bbox = FUNC6(bbox, state->scissor);
	}
	else
	{
		bbox = FUNC6(FUNC12(ctx, state->dest), state->scissor);
	}

	if (FUNC5(ctx, rast, path, ctm, flatness, &bbox, &bbox) || FUNC9(ctx, rast))
	{
		state[1].scissor = bbox;
		state[1].mask = NULL;
#ifdef DUMP_GROUP_BLENDS
		dump_spaces(dev->top-1, "Clip (rectangular) begin\n");
#endif
		return;
	}

	state[1].mask = FUNC11(ctx, NULL, bbox, NULL, 1);
	FUNC1(ctx, state[1].mask);
	state[1].dest = FUNC11(ctx, model, bbox, state[0].dest->seps, state[0].dest->alpha);
	FUNC4(ctx, state[1].dest, state[0].dest, bbox, dev->default_cs);
	if (state[1].shape)
	{
		state[1].shape = FUNC11(ctx, NULL, bbox, NULL, 1);
		FUNC1(ctx, state[1].shape);
	}
	if (state[1].group_alpha)
	{
		state[1].group_alpha = FUNC11(ctx, NULL, bbox, NULL, 1);
		FUNC1(ctx, state[1].group_alpha);
	}

	FUNC3(ctx, rast, even_odd, state[1].mask, NULL, 0);

	state[1].scissor = bbox;

#ifdef DUMP_GROUP_BLENDS
	dump_spaces(dev->top-1, "Clip (non-rectangular) begin\n");
#endif
}