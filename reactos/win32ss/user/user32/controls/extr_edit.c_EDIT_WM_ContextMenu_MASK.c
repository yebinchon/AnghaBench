#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ selection_start; scalar_t__ selection_end; int style; int flags; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_9__ {int left; int right; int top; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  TYPE_2__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  CF_UNICODETEXT ; 
 int /*<<< orphan*/  COORDS_SCREEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int EF_FOCUSED ; 
 int ES_PASSWORD ; 
 int ES_READONLY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int MF_BYPOSITION ; 
 int MF_ENABLED ; 
 int MF_GRAYED ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int TPM_LEFTALIGN ; 
 int TPM_NONOTIFY ; 
 int TPM_RETURNCMD ; 
 int TPM_RIGHTBUTTON ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  user32_module ; 

__attribute__((used)) static void FUNC14(EDITSTATE *es, INT x, INT y)
{
	HMENU menu = FUNC7(user32_module, "EDITMENU");
	HMENU popup = FUNC5(menu, 0);
	UINT start = es->selection_start;
	UINT end = es->selection_end;
	UINT cmd;

	FUNC9(start, end);

	/* undo */
	FUNC3(popup, 0, MF_BYPOSITION | (FUNC2(es) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
	/* cut */
	FUNC3(popup, 2, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
	/* copy */
	FUNC3(popup, 3, MF_BYPOSITION | ((end - start) && !(es->style & ES_PASSWORD) ? MF_ENABLED : MF_GRAYED));
	/* paste */
	FUNC3(popup, 4, MF_BYPOSITION | (FUNC6(CF_UNICODETEXT) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
	/* delete */
	FUNC3(popup, 5, MF_BYPOSITION | ((end - start) && !(es->style & ES_READONLY) ? MF_ENABLED : MF_GRAYED));
	/* select all */
	FUNC3(popup, 7, MF_BYPOSITION | (start || (end != FUNC13(es)) ? MF_ENABLED : MF_GRAYED));

        if (x == -1 && y == -1) /* passed via VK_APPS press/release */
        {
            RECT rc;
            /* Windows places the menu at the edit's center in this case */
#ifdef __REACTOS__
            /* ReactOS r55202 */
            GetClientRect(es->hwndSelf, &rc);
            MapWindowPoints(es->hwndSelf, 0, (POINT *)&rc, 2);
#else
            FUNC12( es->hwndSelf, COORDS_SCREEN, NULL, &rc );
#endif
            x = rc.left + (rc.right - rc.left) / 2;
            y = rc.top + (rc.bottom - rc.top) / 2;
        }

	if (!(es->flags & EF_FOCUSED))
            FUNC10(es->hwndSelf);

	cmd = FUNC11(popup, TPM_LEFTALIGN | TPM_RIGHTBUTTON | TPM_RETURNCMD | TPM_NONOTIFY,
			     x, y, 0, es->hwndSelf, NULL);

	if (cmd)
	    FUNC1(es, cmd);

	FUNC0(menu);
}