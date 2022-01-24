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
struct TYPE_8__ {scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_7__ {scalar_t__ line_height; int style; scalar_t__ x_offset; scalar_t__ text_width; scalar_t__ y_offset; scalar_t__ line_count; scalar_t__ char_width; int flags; int /*<<< orphan*/  hwndSelf; TYPE_2__ format_rect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  scalar_t__ INT ;
typedef  TYPE_1__ EDITSTATE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int EF_HSCROLL_TRACK ; 
 int EF_VSCROLL_TRACK ; 
 int /*<<< orphan*/  EN_HSCROLL ; 
 int /*<<< orphan*/  EN_VSCROLL ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_INVALIDATE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC8(EDITSTATE *es, INT dx, INT dy)
{
	INT nyoff;
	INT x_offset_in_pixels;
	INT lines_per_page = (es->format_rect.bottom - es->format_rect.top) /
			      es->line_height;

	if (es->style & ES_MULTILINE)
	{
	    x_offset_in_pixels = es->x_offset;
	}
	else
	{
	    dy = 0;
	    x_offset_in_pixels = (short)FUNC5(FUNC0(es, es->x_offset, FALSE));
	}

	if (-dx > x_offset_in_pixels)
		dx = -x_offset_in_pixels;
	if (dx > es->text_width - x_offset_in_pixels)
		dx = es->text_width - x_offset_in_pixels;
	nyoff = FUNC7(0, es->y_offset + dy);
	if (nyoff >= es->line_count - lines_per_page)
		nyoff = FUNC7(0, es->line_count - lines_per_page);
	dy = (es->y_offset - nyoff) * es->line_height;
	if (dx || dy) {
		RECT rc1;
		RECT rc;

		es->y_offset = nyoff;
		if(es->style & ES_MULTILINE)
		    es->x_offset += dx;
		else
		    es->x_offset += dx / es->char_width;

		FUNC3(es->hwndSelf, &rc1);
		FUNC4(&rc, &rc1, &es->format_rect);
		FUNC6(es->hwndSelf, -dx, dy,
				NULL, &rc, NULL, NULL, SW_INVALIDATE);
		/* force scroll info update */
		FUNC2(es);
	}
	if (dx && !(es->flags & EF_HSCROLL_TRACK))
		FUNC1(es, EN_HSCROLL);
	if (dy && !(es->flags & EF_VSCROLL_TRACK))
		FUNC1(es, EN_VSCROLL);
	return TRUE;
}