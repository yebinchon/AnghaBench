#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_9__ {int nPos; int nMax; int /*<<< orphan*/  nMin; scalar_t__ nPage; } ;
struct TYPE_8__ {int nPos; int nMax; int /*<<< orphan*/  nMin; } ;
struct TYPE_11__ {int styleFlags; scalar_t__ nTotalWidth; scalar_t__ nTotalLength; int /*<<< orphan*/  texthost; TYPE_3__ sizeWindow; scalar_t__ hWnd; int /*<<< orphan*/  rcFormat; TYPE_2__ vert_si; TYPE_1__ horz_si; } ;
typedef  TYPE_4__ ME_TextEditor ;
typedef  int LONG ;
typedef  int BOOL ;

/* Variables and functions */
 int ES_DISABLENOSCROLL ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  SB_HORZ ; 
 int /*<<< orphan*/  SB_VERT ; 
 int /*<<< orphan*/  SW_INVALIDATE ; 
 int /*<<< orphan*/  TRUE ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int) ; 

void FUNC11(ME_TextEditor *editor, int x, int y)
{
  BOOL bScrollBarIsVisible, bScrollBarWillBeVisible;
  int scrollX = 0, scrollY = 0;

  if (editor->horz_si.nPos != x) {
    x = FUNC10(x, editor->horz_si.nMax);
    x = FUNC9(x, editor->horz_si.nMin);
    scrollX = editor->horz_si.nPos - x;
    editor->horz_si.nPos = x;
    if (editor->horz_si.nMax > 0xFFFF) /* scale to 16-bit value */
      x = FUNC7(x, 0xFFFF, editor->horz_si.nMax);
    FUNC3(editor->texthost, SB_HORZ, x, TRUE);
  }

  if (editor->vert_si.nPos != y) {
    y = FUNC10(y, editor->vert_si.nMax - (int)editor->vert_si.nPage);
    y = FUNC9(y, editor->vert_si.nMin);
    scrollY = editor->vert_si.nPos - y;
    editor->vert_si.nPos = y;
    if (editor->vert_si.nMax > 0xFFFF) /* scale to 16-bit value */
      y = FUNC7(y, 0xFFFF, editor->vert_si.nMax);
    FUNC3(editor->texthost, SB_VERT, y, TRUE);
  }

  if (FUNC8(scrollX) > editor->sizeWindow.cx ||
      FUNC8(scrollY) > editor->sizeWindow.cy)
    FUNC1(editor->texthost, NULL, TRUE);
  else
    FUNC2(editor->texthost, scrollX, scrollY,
                               &editor->rcFormat, &editor->rcFormat,
                               NULL, NULL, SW_INVALIDATE);
  FUNC5(editor);

  if (editor->hWnd)
  {
    LONG winStyle = FUNC0(editor->hWnd, GWL_STYLE);
    if (editor->styleFlags & WS_HSCROLL)
    {
      bScrollBarIsVisible = (winStyle & WS_HSCROLL) != 0;
      bScrollBarWillBeVisible = (editor->nTotalWidth > editor->sizeWindow.cx
                                 && (editor->styleFlags & WS_HSCROLL))
                                || (editor->styleFlags & ES_DISABLENOSCROLL);
      if (bScrollBarIsVisible != bScrollBarWillBeVisible)
        FUNC4(editor->texthost, SB_HORZ,
                                  bScrollBarWillBeVisible);
    }

    if (editor->styleFlags & WS_VSCROLL)
    {
      bScrollBarIsVisible = (winStyle & WS_VSCROLL) != 0;
      bScrollBarWillBeVisible = (editor->nTotalLength > editor->sizeWindow.cy
                                 && (editor->styleFlags & WS_VSCROLL)
                                 && (editor->styleFlags & ES_MULTILINE))
                                || (editor->styleFlags & ES_DISABLENOSCROLL);
      if (bScrollBarIsVisible != bScrollBarWillBeVisible)
        FUNC4(editor->texthost, SB_VERT,
                                  bScrollBarWillBeVisible);
    }
  }
  FUNC6(editor);
}