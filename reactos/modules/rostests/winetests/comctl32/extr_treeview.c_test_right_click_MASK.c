#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int left; int right; int top; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ POINT ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  MK_RBUTTON ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 int /*<<< orphan*/  PARENT_SEQ_INDEX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  TREEVIEW_SEQ_INDEX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TVGN_CARET ; 
 int /*<<< orphan*/  TVM_ENSUREVISIBLE ; 
 int /*<<< orphan*/  TVM_GETITEMRECT ; 
 int /*<<< orphan*/  TVM_GETNEXTITEM ; 
 int /*<<< orphan*/  TVM_SELECTITEM ; 
 int /*<<< orphan*/  WM_RBUTTONDOWN ; 
 int /*<<< orphan*/  WM_RBUTTONUP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ hChild ; 
 int /*<<< orphan*/  hMainWnd ; 
 scalar_t__ hRoot ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parent_right_click_seq ; 
 int /*<<< orphan*/  sequences ; 
 int /*<<< orphan*/  test_right_click_seq ; 

__attribute__((used)) static void FUNC13(void)
{
    HWND hTree;
    HTREEITEM selected;
    RECT rc;
    LRESULT result;
    POINT pt, orig_pos;

    hTree = FUNC7(0);
    FUNC8(hTree);

    FUNC5(hTree, TVM_ENSUREVISIBLE, 0, (LPARAM)hChild);
    FUNC5(hTree, TVM_SELECTITEM, TVGN_CARET, (LPARAM)hChild);
    selected = (HTREEITEM)FUNC5(hTree, TVM_GETNEXTITEM, TVGN_CARET, 0);
    FUNC11(selected == hChild, "child item not selected\n");

    *(HTREEITEM *)&rc = hRoot;
    result = FUNC5(hTree, TVM_GETITEMRECT, TRUE, (LPARAM)&rc);
    FUNC11(result, "TVM_GETITEMRECT failed\n");

    FUNC9();

    pt.x = (rc.left + rc.right) / 2;
    pt.y = (rc.top + rc.bottom) / 2;
    FUNC0(hMainWnd, &pt);
    FUNC2(&orig_pos);
    FUNC6(pt.x, pt.y);

    FUNC9();
    FUNC10(sequences, NUM_MSG_SEQUENCES);

    FUNC4(hTree, WM_RBUTTONDOWN, MK_RBUTTON, FUNC3(pt.x, pt.y));
    FUNC4(hTree, WM_RBUTTONUP, 0, FUNC3(pt.x, pt.y));

    FUNC9();

    FUNC12(sequences, TREEVIEW_SEQ_INDEX, test_right_click_seq, "right click sequence", FALSE);
    FUNC12(sequences, PARENT_SEQ_INDEX, parent_right_click_seq, "parent right click sequence", FALSE);

    selected = (HTREEITEM)FUNC5(hTree, TVM_GETNEXTITEM, TVGN_CARET, 0);
    FUNC11(selected == hChild, "child item should still be selected\n");

    FUNC6(orig_pos.x, orig_pos.y);
    FUNC1(hTree);
}