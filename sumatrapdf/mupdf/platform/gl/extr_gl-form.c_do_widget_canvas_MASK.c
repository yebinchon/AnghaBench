#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int is_hot; int is_active; int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_widget ;
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_25__ {scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; } ;
typedef  TYPE_2__ fz_irect ;
struct TYPE_26__ {int /*<<< orphan*/  dialog; scalar_t__ down; TYPE_1__* active; TYPE_1__* hot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_LINE_LOOP ; 
 int /*<<< orphan*/  GL_LINE_STIPPLE ; 
 int /*<<< orphan*/  GL_ONE ; 
 int /*<<< orphan*/  GL_ONE_MINUS_DST_COLOR ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_ZERO ; 
 scalar_t__ PDF_ANNOT_WIDGET ; 
 int PDF_FIELD_IS_READ_ONLY ; 
#define  PDF_WIDGET_TYPE_CHECKBOX 132 
#define  PDF_WIDGET_TYPE_COMBOBOX 131 
#define  PDF_WIDGET_TYPE_LISTBOX 130 
#define  PDF_WIDGET_TYPE_RADIOBUTTON 129 
 int PDF_WIDGET_TYPE_SIGNATURE ; 
#define  PDF_WIDGET_TYPE_TEXT 128 
 int /*<<< orphan*/  ch_dialog ; 
 TYPE_1__* ch_widget ; 
 int /*<<< orphan*/  ctx ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  page ; 
 int /*<<< orphan*/  pdf ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 TYPE_1__* selected_annot ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 scalar_t__ showform ; 
 TYPE_4__ ui ; 
 scalar_t__ FUNC28 (TYPE_2__) ; 
 int /*<<< orphan*/  view_page_ctm ; 

void FUNC29(fz_irect canvas_area)
{
	pdf_widget *widget;
	fz_rect bounds;
	fz_irect area;

	if (!pdf)
		return;

	for (widget = FUNC20(ctx, page); widget; widget = FUNC21(ctx, widget))
	{
		bounds = FUNC18(ctx, widget);
		bounds = FUNC1(bounds, view_page_ctm);
		area = FUNC0(bounds);

		if (FUNC28(canvas_area) && FUNC28(area))
		{
			if (!widget->is_hot)
				FUNC13(ctx, widget);
			widget->is_hot = 1;

			ui.hot = widget;
			if (!ui.active && ui.down)
			{
				ui.active = widget;
				FUNC12(ctx, widget);
				if (selected_annot != widget)
				{
					if (selected_annot && FUNC17(ctx, selected_annot) == PDF_ANNOT_WIDGET)
						FUNC11(ctx, selected_annot);
					selected_annot = widget;
					FUNC15(ctx, widget);
				}
			}
		}
		else
		{
			if (widget->is_hot)
				FUNC14(ctx, widget);
			widget->is_hot = 0;
		}

		/* Set is_hot and is_active to select current appearance */
		widget->is_active = (ui.active == widget && ui.down);

		if (showform)
		{
			FUNC3(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
			FUNC6(GL_BLEND);
			FUNC4(0, 0, 1, 0.1f);
			FUNC9(area.x0, area.y0, area.x1, area.y1);
			FUNC5(GL_BLEND);
		}

		if (ui.active == widget || (!ui.active && ui.hot == widget))
		{
			FUNC8(1, 0xAAAA);
			FUNC6(GL_LINE_STIPPLE);
			FUNC3(GL_ONE_MINUS_DST_COLOR, GL_ZERO);
			FUNC6(GL_BLEND);
			FUNC4(1, 1, 1, 1);
			FUNC2(GL_LINE_LOOP);
			FUNC10(area.x0-0.5f, area.y0-0.5f);
			FUNC10(area.x1+0.5f, area.y0-0.5f);
			FUNC10(area.x1+0.5f, area.y1+0.5f);
			FUNC10(area.x0-0.5f, area.y1+0.5f);
			FUNC7();
			FUNC5(GL_BLEND);
			FUNC5(GL_LINE_STIPPLE);
		}

		if (ui.hot == widget && ui.active == widget && !ui.down)
		{
			FUNC16(ctx, widget);

			if (FUNC24(ctx, widget) == PDF_WIDGET_TYPE_SIGNATURE)
			{
				FUNC26(widget);
			}
			else
			{
				if (FUNC19(ctx, widget->obj) & PDF_FIELD_IS_READ_ONLY)
					continue;

				switch (FUNC24(ctx, widget))
				{
				default:
					break;
				case PDF_WIDGET_TYPE_CHECKBOX:
				case PDF_WIDGET_TYPE_RADIOBUTTON:
					FUNC22(ctx, widget);
					break;
				case PDF_WIDGET_TYPE_TEXT:
					FUNC27(widget);
					break;
				case PDF_WIDGET_TYPE_COMBOBOX:
				case PDF_WIDGET_TYPE_LISTBOX:
					ui.dialog = ch_dialog;
					ch_widget = widget;
					break;
				}
			}

		}
	}

	if (FUNC23(ctx, page))
		FUNC25();
}