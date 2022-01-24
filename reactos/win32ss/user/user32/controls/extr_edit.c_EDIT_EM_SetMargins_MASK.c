#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_11__ {int left; int right; } ;
struct TYPE_14__ {int left_margin; int right_margin; TYPE_1__ format_rect; int /*<<< orphan*/  hwndSelf; scalar_t__ font; } ;
struct TYPE_13__ {int right; int left; } ;
struct TYPE_12__ {int tmPitchAndFamily; int /*<<< orphan*/  tmCharSet; } ;
typedef  TYPE_2__ TEXTMETRICW ;
typedef  TYPE_3__ RECT ;
typedef  int LONG ;
typedef  int INT ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_4__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int EC_LEFTMARGIN ; 
 int EC_RIGHTMARGIN ; 
 scalar_t__ EC_USEFONTINFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int TMPF_TRUETYPE ; 
 int TMPF_VECTOR ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(EDITSTATE *es, INT action,
			       WORD left, WORD right, BOOL repaint)
{
	TEXTMETRICW tm;
	INT default_left_margin  = 0; /* in pixels */
	INT default_right_margin = 0; /* in pixels */

        /* Set the default margins depending on the font */
        if (es->font && (left == EC_USEFONTINFO || right == EC_USEFONTINFO)) {
            HDC dc = FUNC4(es->hwndSelf);
            HFONT old_font = FUNC7(dc, es->font);
            LONG width = FUNC2(dc, &tm, NULL);
            RECT rc;

            /* The default margins are only non zero for TrueType or Vector fonts */
            if (tm.tmPitchAndFamily & ( TMPF_VECTOR | TMPF_TRUETYPE )) {
                if (!FUNC9(tm.tmCharSet)) {
                    default_left_margin = width / 2;
                    default_right_margin = width / 2;

                    FUNC3(es->hwndSelf, &rc);
                    if (rc.right - rc.left < (width / 2 + width) * 2 &&
                        (width >= 28 || !FUNC5(&rc)) ) {
                        default_left_margin = es->left_margin;
                        default_right_margin = es->right_margin;
                    }
                } else {
                    /* FIXME: figure out the CJK values. They are not affected by the client rect. */
                    default_left_margin = width / 2;
                    default_right_margin = width / 2;
                }
            }
            FUNC7(dc, old_font);
            FUNC6(es->hwndSelf, dc);
        }

	if (action & EC_LEFTMARGIN) {
		es->format_rect.left -= es->left_margin;
		if (left != EC_USEFONTINFO)
			es->left_margin = left;
		else
			es->left_margin = default_left_margin;
		es->format_rect.left += es->left_margin;
	}

	if (action & EC_RIGHTMARGIN) {
		es->format_rect.right += es->right_margin;
		if (right != EC_USEFONTINFO)
 			es->right_margin = right;
		else
			es->right_margin = default_right_margin;
		es->format_rect.right -= es->right_margin;
	}
	
	if (action & (EC_LEFTMARGIN | EC_RIGHTMARGIN)) {
		FUNC0(es);
		if (repaint) FUNC1(es, NULL, TRUE);
	}
	
	FUNC8("left=%d, right=%d\n", es->left_margin, es->right_margin);
}