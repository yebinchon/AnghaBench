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
struct TYPE_15__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef  TYPE_1__ fz_rect ;
struct TYPE_16__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ fz_point ;
typedef  int /*<<< orphan*/  fz_irect ;
struct TYPE_17__ {scalar_t__ active; scalar_t__ down; scalar_t__ right; scalar_t__ down_y; scalar_t__ y; scalar_t__ down_x; scalar_t__ x; scalar_t__ hot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_LINES ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC1 (TYPE_1__,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC6 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__,TYPE_2__) ; 
 scalar_t__ FUNC14 (TYPE_2__,TYPE_2__,int) ; 
 scalar_t__ selected_annot ; 
 TYPE_3__ ui ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  view_page_ctm ; 
 int /*<<< orphan*/  view_page_inv_ctm ; 

__attribute__((used)) static void FUNC16(fz_irect canvas_area, fz_irect area, fz_rect *rect)
{
	enum { EL_NONE, EL_A=1, EL_B=2, EL_MOVE=EL_A|EL_B };
	static fz_point start_a, start_b;
	static int state = EL_NONE;
	fz_irect a_grab, b_grab;
	fz_point a, b;
	float lw;

	area = FUNC0(area, 5);
	if (FUNC15(canvas_area) && FUNC15(area))
	{
		ui.hot = selected_annot;
		if (!ui.active && ui.down)
		{
			ui.active = selected_annot;
			FUNC12(ctx, selected_annot, &start_a, &start_b);
			start_a = FUNC6(start_a, view_page_ctm);
			start_b = FUNC6(start_b, view_page_ctm);
			a_grab = FUNC2(start_a.x, start_a.y, start_a.x, start_a.y);
			b_grab = FUNC2(start_b.x, start_b.y, start_b.x, start_b.y);
			a_grab = FUNC0(a_grab, 10);
			b_grab = FUNC0(b_grab, 10);
			state = EL_NONE;
			if (FUNC15(a_grab)) state |= EL_A;
			if (FUNC15(b_grab)) state |= EL_B;
			if (!state) state = EL_MOVE;
		}
	}

	if (ui.active == selected_annot && state != 0)
	{
		a = start_a;
		b = start_b;
		if (state & EL_A) { a.x += (ui.x - ui.down_x); a.y += (ui.y - ui.down_y); }
		if (state & EL_B) { b.x += (ui.x - ui.down_x); b.y += (ui.y - ui.down_y); }

		FUNC7(GL_LINES);
		FUNC8(1, 0, 0, 1);
		FUNC10(a.x, a.y);
		FUNC10(b.x, b.y);
		FUNC9();

		rect->x0 = FUNC5(a.x, b.x);
		rect->y0 = FUNC5(a.y, b.y);
		rect->x1 = FUNC4(a.x, b.x);
		rect->y1 = FUNC4(a.y, b.y);
		lw = FUNC11(ctx, selected_annot);
		*rect = FUNC1(*rect, FUNC3(view_page_ctm) * lw);

		/* cancel on right click */
		if (ui.right)
			state = EL_NONE;

		/* commit on mouse-up */
		if (!ui.down)
		{
			state = EL_NONE;
			if (FUNC14(start_a, a, 1) || FUNC14(start_b, b, 1))
			{
				a = FUNC6(a, view_page_inv_ctm);
				b = FUNC6(b, view_page_inv_ctm);
				FUNC13(ctx, selected_annot, a, b);
			}
		}
	}
}