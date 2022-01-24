#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
struct TYPE_19__ {float alpha; int blendmode; TYPE_1__* dest; TYPE_1__* group_alpha; TYPE_1__* shape; } ;
typedef  TYPE_2__ fz_draw_state ;
struct TYPE_20__ {scalar_t__ top; int /*<<< orphan*/  default_cs; } ;
typedef  TYPE_3__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FZ_BLEND_ISOLATED ; 
 int FZ_BLEND_KNOCKOUT ; 
 int FZ_BLEND_MODEMASK ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,float,int,int,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12(fz_context *ctx, fz_device *devp)
{
	fz_draw_device *dev = (fz_draw_device*)devp;
	int blendmode;
	int isolated;
	float alpha;
	fz_draw_state *state;

	if (dev->top == 0)
		FUNC9(ctx, FZ_ERROR_GENERIC, "unexpected end group");

	state = FUNC10(ctx, dev, "group");

	alpha = state[1].alpha;
	blendmode = state[1].blendmode & FZ_BLEND_MODEMASK;
	isolated = state[1].blendmode & FZ_BLEND_ISOLATED;

#ifdef DUMP_GROUP_BLENDS
	dump_spaces(dev->top, "");
	fz_dump_blend(ctx, "Group end: blending ", state[1].dest);
	if (state[1].shape)
		fz_dump_blend(ctx, "/S=", state[1].shape);
	if (state[1].group_alpha)
		fz_dump_blend(ctx, "/GA=", state[1].group_alpha);
	fz_dump_blend(ctx, " onto ", state[0].dest);
	if (state[0].shape)
		fz_dump_blend(ctx, "/S=", state[0].shape);
	if (state[0].group_alpha)
		fz_dump_blend(ctx, "/GA=", state[0].group_alpha);
	if (alpha != 1.0f)
		printf(" (alpha %g)", alpha);
	if (blendmode != 0)
		printf(" (blend %d)", blendmode);
	if (isolated != 0)
		printf(" (isolated)");
	if (state[1].blendmode & FZ_BLEND_KNOCKOUT)
		printf(" (knockout)");
#endif

	if (state[0].dest->colorspace != state[1].dest->colorspace)
	{
		fz_pixmap *converted = FUNC3(ctx, state[1].dest, state[0].dest->colorspace, NULL, dev->default_cs, fz_default_color_params, 1);
		FUNC4(ctx, state[1].dest);
		state[1].dest = converted;
	}

	if ((blendmode == 0) && (state[0].shape == state[1].shape) && (state[0].group_alpha == state[1].group_alpha))
		FUNC7(state[0].dest, state[1].dest, alpha * 255);
	else
		FUNC2(ctx, state[0].dest, state[1].dest, alpha * 255, blendmode, isolated, state[1].group_alpha);

	if (state[0].shape != state[1].shape)
	{
		/* The 'D' on page 7 of Altona_Technical_v20_x4.pdf goes wrong if this
		 * isn't alpha * 255, as the blend back fails to take account of alpha. */
		if (state[0].shape)
		{
			if (state[1].shape)
				FUNC7(state[0].shape, state[1].shape, alpha * 255);
			else
				FUNC8(state[0].shape, state[1].dest, alpha * 255);
		}
	}
	FUNC0(state[0].group_alpha == NULL || state[0].group_alpha != state[1].group_alpha);
	if (state[0].group_alpha && state[0].group_alpha != state[1].group_alpha)
	{
		/* The 'D' on page 7 of Altona_Technical_v20_x4.pdf uses an isolated group,
		 * and goes wrong if this is 255 * alpha, as an alpha effectively gets
		 * applied twice. CATX5233 page 7 uses a non-isolated group, and goes wrong
		 * if alpha isn't applied here. */
		if (state[1].group_alpha)
			FUNC7(state[0].group_alpha, state[1].group_alpha, isolated ? 255 : alpha * 255);
		else
			FUNC8(state[0].group_alpha, state[1].dest, isolated ? 255 : alpha * 255);
	}

	FUNC0(state[0].dest != state[1].dest);

#ifdef DUMP_GROUP_BLENDS
	fz_dump_blend(ctx, " to get ", state[0].dest);
	if (state[0].shape)
		fz_dump_blend(ctx, "/S=", state[0].shape);
	if (state[0].group_alpha)
		fz_dump_blend(ctx, "/GA=", state[0].group_alpha);
	printf("\n");
#endif

	if (state[0].shape != state[1].shape)
	{
		FUNC4(ctx, state[1].shape);
		state[1].shape = NULL;
	}
	FUNC4(ctx, state[1].group_alpha);
	state[1].group_alpha = NULL;
	FUNC4(ctx, state[1].dest);
	state[1].dest = NULL;

	if (state[0].blendmode & FZ_BLEND_KNOCKOUT)
		FUNC6(ctx, dev);
}