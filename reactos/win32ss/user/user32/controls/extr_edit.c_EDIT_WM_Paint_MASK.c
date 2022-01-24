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
struct TYPE_18__ {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
struct TYPE_20__ {int flags; int style; scalar_t__ y_offset; scalar_t__ line_count; int /*<<< orphan*/  hwndSelf; scalar_t__ font; scalar_t__ bEnableState; TYPE_1__ format_rect; } ;
struct TYPE_19__ {scalar_t__ left; scalar_t__ top; scalar_t__ right; scalar_t__ bottom; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HFONT ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HBRUSH ;
typedef  TYPE_3__ EDITSTATE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  COLOR_GRAYTEXT ; 
 int /*<<< orphan*/  COLOR_WINDOWFRAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int EF_FOCUSED ; 
 int ES_MULTILINE ; 
 int ES_NOHIDESEL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  PATCOPY ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXBORDER ; 
 int /*<<< orphan*/  SM_CYBORDER ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int WS_BORDER ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 
 scalar_t__ FUNC18 (TYPE_3__*) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC21(EDITSTATE *es, HDC hdc)
{
	PAINTSTRUCT ps;
	INT i;
	HDC dc;
	HFONT old_font = 0;
	RECT rc;
	RECT rcClient;
	RECT rcLine;
	RECT rcRgn;
	HBRUSH brush;
	HBRUSH old_brush;
	INT bw, bh;
	BOOL rev = es->bEnableState &&
				((es->flags & EF_FOCUSED) ||
					(es->style & ES_NOHIDESEL));
        dc = hdc ? hdc : FUNC0(es->hwndSelf, &ps);

	/* The dc we use for calculating may not be the one we paint into.
	   This is the safest action. */
	FUNC2(es);
	FUNC8(es->hwndSelf, &rcClient);

	/* get the background brush */
	brush = FUNC3(es, dc);

	/* paint the border and the background */
	FUNC13(dc, rcClient.left, rcClient.top, rcClient.right, rcClient.bottom);
	
	if(es->style & WS_BORDER) {
		bw = FUNC12(SM_CXBORDER);
		bh = FUNC12(SM_CYBORDER);
		rc = rcClient;
		if(es->style & ES_MULTILINE) {
			if(es->style & WS_HSCROLL) rc.bottom+=bh;
			if(es->style & WS_VSCROLL) rc.right+=bw;
		}
		
		/* Draw the frame. Same code as in nonclient.c */
		old_brush = FUNC16(dc, FUNC11(COLOR_WINDOWFRAME));
		FUNC15(dc, rc.left, rc.top, rc.right - rc.left, bh, PATCOPY);
		FUNC15(dc, rc.left, rc.top, bw, rc.bottom - rc.top, PATCOPY);
		FUNC15(dc, rc.left, rc.bottom - 1, rc.right - rc.left, -bw, PATCOPY);
		FUNC15(dc, rc.right - 1, rc.top, -bw, rc.bottom - rc.top, PATCOPY);
		FUNC16(dc, old_brush);
		
		/* Keep the border clean */
		FUNC13(dc, rc.left+bw, rc.top+bh,
		    FUNC19(rc.right-bw, rc.left+bw), FUNC19(rc.bottom-bh, rc.top+bh));
	}
	
	FUNC9(dc, &rc);
	FUNC7(dc, &rc, brush);

	FUNC13(dc, es->format_rect.left,
				es->format_rect.top,
				es->format_rect.right,
				es->format_rect.bottom);
	if (es->style & ES_MULTILINE) {
		rc = rcClient;
		FUNC13(dc, rc.left, rc.top, rc.right, rc.bottom);
	}
	if (es->font)
		old_font = FUNC16(dc, es->font);

	if (!es->bEnableState)
		FUNC17(dc, FUNC10(COLOR_GRAYTEXT));
	FUNC9(dc, &rcRgn);
	if (es->style & ES_MULTILINE) {
		INT vlc = FUNC18(es);
		for (i = es->y_offset ; i <= FUNC20(es->y_offset + vlc, es->y_offset + es->line_count - 1) ; i++) {
			FUNC5(es, dc, i);
			FUNC1(es, i, 0, -1, &rcLine);
			if (FUNC14(&rc, &rcRgn, &rcLine))
				FUNC4(es, dc, i, rev);
		}
	} else {
		FUNC5(es, dc, 0);
		FUNC1(es, 0, 0, -1, &rcLine);
		if (FUNC14(&rc, &rcRgn, &rcLine))
			FUNC4(es, dc, 0, rev);
	}
	if (es->font)
		FUNC16(dc, old_font);

        if (!hdc)
            FUNC6(es->hwndSelf, &ps);
}