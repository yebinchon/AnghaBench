#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {scalar_t__ f; scalar_t__ e; } ;
struct TYPE_28__ {int len; int /*<<< orphan*/  font; TYPE_2__* items; TYPE_6__ trm; struct TYPE_28__* next; } ;
typedef  TYPE_3__ fz_text_span ;
struct TYPE_29__ {TYPE_3__* head; } ;
typedef  TYPE_4__ fz_text ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_path ;
struct TYPE_26__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_30__ {TYPE_1__ member_0; } ;
typedef  TYPE_5__ fz_overprint ;
typedef  TYPE_6__ fz_matrix ;
typedef  int /*<<< orphan*/  fz_glyph ;
struct TYPE_32__ {int blendmode; int /*<<< orphan*/  scissor; scalar_t__ group_alpha; scalar_t__ shape; scalar_t__ dest; } ;
typedef  TYPE_7__ fz_draw_state ;
struct TYPE_33__ {size_t top; int /*<<< orphan*/  default_cs; scalar_t__ resolve_spots; int /*<<< orphan*/  rast; TYPE_7__* stack; TYPE_6__ transform; } ;
typedef  TYPE_8__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;
struct TYPE_27__ {int gid; scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
 int FZ_BLEND_KNOCKOUT ; 
 int /*<<< orphan*/  FZ_MAX_COLORS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,scalar_t__,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_6__ FUNC1 (TYPE_6__,TYPE_6__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_6__,int /*<<< orphan*/ *,float const*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC6 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_6__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_6__*,TYPE_6__,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 TYPE_7__* FUNC12 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC13 (int /*<<< orphan*/ *,TYPE_5__*,float const*,int /*<<< orphan*/ *,float,int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC14(fz_context *ctx, fz_device *devp, const fz_text *text, const fz_stroke_state *stroke,
	fz_matrix in_ctm, fz_colorspace *colorspace_in, const float *color, float alpha, fz_color_params color_params)
{
	fz_draw_device *dev = (fz_draw_device*)devp;
	fz_matrix ctm = FUNC1(in_ctm, dev->transform);
	fz_draw_state *state = &dev->stack[dev->top];
	unsigned char colorbv[FZ_MAX_COLORS + 1];
	unsigned char solid = 255;
	unsigned char alpha_byte = alpha * 255;
	fz_text_span *span;
	int i;
	fz_colorspace *colorspace = NULL;
	int aa = FUNC9(dev->rast);
	fz_overprint op = { { 0 } };
	fz_overprint *eop;

	if (dev->top == 0 && dev->resolve_spots)
		state = FUNC12(ctx, dev, color_params, dev->default_cs);

	if (colorspace_in)
		colorspace = FUNC2(ctx, dev->default_cs, colorspace_in);

	if (state->blendmode & FZ_BLEND_KNOCKOUT)
		state = FUNC6(ctx, dev);

	eop = FUNC13(ctx, &op, color, colorspace, alpha, color_params, colorbv, state->dest);

	for (span = text->head; span; span = span->next)
	{
		fz_matrix tm, trm;
		fz_glyph *glyph;
		int gid;

		tm = span->trm;

		for (i = 0; i < span->len; i++)
		{
			gid = span->items[i].gid;
			if (gid < 0)
				continue;

			tm.e = span->items[i].x;
			tm.f = span->items[i].y;
			trm = FUNC1(tm, ctm);

			glyph = FUNC10(ctx, span->font, gid, &trm, ctm, stroke, &state->scissor, aa);
			if (glyph)
			{
				int x = (int)trm.e;
				int y = (int)trm.f;
				FUNC0(colorbv, state->dest, glyph, x, y, &state->scissor, eop);
				if (state->shape)
					FUNC0(&solid, state->shape, glyph, x, y, &state->scissor, 0);
				if (state->group_alpha)
					FUNC0(&alpha_byte, state->group_alpha, glyph, x, y, &state->scissor, 0);
				FUNC4(ctx, glyph);
			}
			else
			{
				fz_path *path = FUNC8(ctx, span->font, gid, tm);
				if (path)
				{
					FUNC3(ctx, devp, path, stroke, in_ctm, colorspace, color, alpha, color_params);
					FUNC5(ctx, path);
				}
				else
				{
					FUNC11(ctx, "cannot render glyph");
				}
			}
		}
	}

	if (state->blendmode & FZ_BLEND_KNOCKOUT)
		FUNC7(ctx, dev);
}