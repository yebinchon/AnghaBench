#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
struct TYPE_14__ {int nMax; int nPage; void* nPos; } ;
struct TYPE_13__ {scalar_t__ cx; int cy; } ;
struct TYPE_12__ {scalar_t__ nMax; scalar_t__ nPage; void* nPos; } ;
struct TYPE_16__ {int styleFlags; scalar_t__ nTotalWidth; int nTotalLength; int /*<<< orphan*/  texthost; scalar_t__ hWnd; TYPE_3__ vert_si; TYPE_2__ sizeWindow; TYPE_1__ horz_si; } ;
struct TYPE_15__ {int cbSize; int fMask; int nMax; scalar_t__ nPage; void* nPos; scalar_t__ nMin; } ;
typedef  TYPE_4__ SCROLLINFO ;
typedef  TYPE_5__ ME_TextEditor ;
typedef  int BOOL ;

/* Variables and functions */
 int ES_DISABLENOSCROLL ; 
 int ES_MULTILINE ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 void* FUNC8 (void*,int,int) ; 
 int /*<<< orphan*/  SB_HORZ ; 
 int /*<<< orphan*/  SB_VERT ; 
 int SIF_DISABLENOSCROLL ; 
 int SIF_PAGE ; 
 int SIF_POS ; 
 int SIF_RANGE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,int,scalar_t__) ; 
 int TRUE ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 

void FUNC11(ME_TextEditor *editor)
{
  /* Note that this is the only function that should ever call
   * SetScrollInfo with SIF_PAGE or SIF_RANGE. */

  SCROLLINFO si;
  BOOL bScrollBarWasVisible, bScrollBarWillBeVisible;

  if (FUNC7(editor))
    FUNC0("ME_UpdateScrollBar had to call ME_WrapMarkedParagraphs\n");

  si.cbSize = sizeof(si);
  si.fMask = SIF_PAGE | SIF_RANGE | SIF_POS;
  si.nMin = 0;
  if (editor->styleFlags & ES_DISABLENOSCROLL)
    si.fMask |= SIF_DISABLENOSCROLL;

  /* Update horizontal scrollbar */
  bScrollBarWasVisible = editor->horz_si.nMax > editor->horz_si.nPage;
  bScrollBarWillBeVisible = editor->nTotalWidth > editor->sizeWindow.cx;
  if (editor->horz_si.nPos && !bScrollBarWillBeVisible)
  {
    FUNC4(editor, 0);
    /* ME_HScrollAbs will call this function,
     * so nothing else needs to be done here. */
    return;
  }

  si.nMax = editor->nTotalWidth;
  si.nPos = editor->horz_si.nPos;
  si.nPage = editor->sizeWindow.cx;

  if (si.nMax != editor->horz_si.nMax ||
      si.nPage != editor->horz_si.nPage)
  {
    FUNC10("min=%d max=%d page=%d\n", si.nMin, si.nMax, si.nPage);
    editor->horz_si.nMax = si.nMax;
    editor->horz_si.nPage = si.nPage;
    if ((bScrollBarWillBeVisible || bScrollBarWasVisible) &&
        editor->styleFlags & WS_HSCROLL)
    {
      if (si.nMax > 0xFFFF)
      {
        /* Native scales the scrollbar info to 16-bit external values. */
        si.nPos = FUNC8(si.nPos, 0xFFFF, si.nMax);
        si.nMax = 0xFFFF;
      }
      if (editor->hWnd) {
        FUNC9(editor->hWnd, SB_HORZ, &si, TRUE);
      } else {
        FUNC2(editor->texthost, SB_HORZ, si.nMin, si.nMax, FALSE);
        FUNC1(editor->texthost, SB_HORZ, si.nPos, TRUE);
      }
      /* SetScrollInfo or SetScrollRange change scrollbar visibility. */
      bScrollBarWasVisible = FUNC5(&si);
    }
  }

  if (editor->styleFlags & WS_HSCROLL)
  {
    if (si.fMask & SIF_DISABLENOSCROLL) {
      bScrollBarWillBeVisible = TRUE;
    } else if (!(editor->styleFlags & WS_HSCROLL)) {
      bScrollBarWillBeVisible = FALSE;
    }

    if (bScrollBarWasVisible != bScrollBarWillBeVisible)
      FUNC3(editor->texthost, SB_HORZ, bScrollBarWillBeVisible);
  }

  /* Update vertical scrollbar */
  bScrollBarWasVisible = editor->vert_si.nMax > editor->vert_si.nPage;
  bScrollBarWillBeVisible = editor->nTotalLength > editor->sizeWindow.cy &&
                            (editor->styleFlags & ES_MULTILINE);

  if (editor->vert_si.nPos && !bScrollBarWillBeVisible)
  {
    FUNC6(editor, 0);
    /* ME_VScrollAbs will call this function,
     * so nothing else needs to be done here. */
    return;
  }

  si.nMax = editor->nTotalLength;
  si.nPos = editor->vert_si.nPos;
  si.nPage = editor->sizeWindow.cy;

  if (si.nMax != editor->vert_si.nMax ||
      si.nPage != editor->vert_si.nPage)
  {
    FUNC10("min=%d max=%d page=%d\n", si.nMin, si.nMax, si.nPage);
    editor->vert_si.nMax = si.nMax;
    editor->vert_si.nPage = si.nPage;
    if ((bScrollBarWillBeVisible || bScrollBarWasVisible) &&
        editor->styleFlags & WS_VSCROLL)
    {
      if (si.nMax > 0xFFFF)
      {
        /* Native scales the scrollbar info to 16-bit external values. */
        si.nPos = FUNC8(si.nPos, 0xFFFF, si.nMax);
        si.nMax = 0xFFFF;
      }
      if (editor->hWnd) {
        FUNC9(editor->hWnd, SB_VERT, &si, TRUE);
      } else {
        FUNC2(editor->texthost, SB_VERT, si.nMin, si.nMax, FALSE);
        FUNC1(editor->texthost, SB_VERT, si.nPos, TRUE);
      }
      /* SetScrollInfo or SetScrollRange change scrollbar visibility. */
      bScrollBarWasVisible = FUNC5(&si);
    }
  }

  if (editor->styleFlags & WS_VSCROLL)
  {
    if (si.fMask & SIF_DISABLENOSCROLL) {
      bScrollBarWillBeVisible = TRUE;
    } else if (!(editor->styleFlags & WS_VSCROLL)) {
      bScrollBarWillBeVisible = FALSE;
    }

    if (bScrollBarWasVisible != bScrollBarWillBeVisible)
      FUNC3(editor->texthost, SB_VERT,
                                bScrollBarWillBeVisible);
  }
}