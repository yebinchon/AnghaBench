
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_9__ {int nPos; int nMax; int nMin; scalar_t__ nPage; } ;
struct TYPE_8__ {int nPos; int nMax; int nMin; } ;
struct TYPE_11__ {int styleFlags; scalar_t__ nTotalWidth; scalar_t__ nTotalLength; int texthost; TYPE_3__ sizeWindow; scalar_t__ hWnd; int rcFormat; TYPE_2__ vert_si; TYPE_1__ horz_si; } ;
typedef TYPE_4__ ME_TextEditor ;
typedef int LONG ;
typedef int BOOL ;


 int ES_DISABLENOSCROLL ;
 int ES_MULTILINE ;
 int GWL_STYLE ;
 int GetWindowLongW (scalar_t__,int ) ;
 int ITextHost_TxInvalidateRect (int ,int *,int ) ;
 int ITextHost_TxScrollWindowEx (int ,int,int,int *,int *,int *,int *,int ) ;
 int ITextHost_TxSetScrollPos (int ,int ,int,int ) ;
 int ITextHost_TxShowScrollBar (int ,int ,int) ;
 int ME_Repaint (TYPE_4__*) ;
 int ME_UpdateScrollBar (TYPE_4__*) ;
 int MulDiv (int,int,int) ;
 int SB_HORZ ;
 int SB_VERT ;
 int SW_INVALIDATE ;
 int TRUE ;
 int WS_HSCROLL ;
 int WS_VSCROLL ;
 scalar_t__ abs (int) ;
 int max (int,int ) ;
 int min (int,int) ;

void ME_ScrollAbs(ME_TextEditor *editor, int x, int y)
{
  BOOL bScrollBarIsVisible, bScrollBarWillBeVisible;
  int scrollX = 0, scrollY = 0;

  if (editor->horz_si.nPos != x) {
    x = min(x, editor->horz_si.nMax);
    x = max(x, editor->horz_si.nMin);
    scrollX = editor->horz_si.nPos - x;
    editor->horz_si.nPos = x;
    if (editor->horz_si.nMax > 0xFFFF)
      x = MulDiv(x, 0xFFFF, editor->horz_si.nMax);
    ITextHost_TxSetScrollPos(editor->texthost, SB_HORZ, x, TRUE);
  }

  if (editor->vert_si.nPos != y) {
    y = min(y, editor->vert_si.nMax - (int)editor->vert_si.nPage);
    y = max(y, editor->vert_si.nMin);
    scrollY = editor->vert_si.nPos - y;
    editor->vert_si.nPos = y;
    if (editor->vert_si.nMax > 0xFFFF)
      y = MulDiv(y, 0xFFFF, editor->vert_si.nMax);
    ITextHost_TxSetScrollPos(editor->texthost, SB_VERT, y, TRUE);
  }

  if (abs(scrollX) > editor->sizeWindow.cx ||
      abs(scrollY) > editor->sizeWindow.cy)
    ITextHost_TxInvalidateRect(editor->texthost, ((void*)0), TRUE);
  else
    ITextHost_TxScrollWindowEx(editor->texthost, scrollX, scrollY,
                               &editor->rcFormat, &editor->rcFormat,
                               ((void*)0), ((void*)0), SW_INVALIDATE);
  ME_Repaint(editor);

  if (editor->hWnd)
  {
    LONG winStyle = GetWindowLongW(editor->hWnd, GWL_STYLE);
    if (editor->styleFlags & WS_HSCROLL)
    {
      bScrollBarIsVisible = (winStyle & WS_HSCROLL) != 0;
      bScrollBarWillBeVisible = (editor->nTotalWidth > editor->sizeWindow.cx
                                 && (editor->styleFlags & WS_HSCROLL))
                                || (editor->styleFlags & ES_DISABLENOSCROLL);
      if (bScrollBarIsVisible != bScrollBarWillBeVisible)
        ITextHost_TxShowScrollBar(editor->texthost, SB_HORZ,
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
        ITextHost_TxShowScrollBar(editor->texthost, SB_VERT,
                                  bScrollBarWillBeVisible);
    }
  }
  ME_UpdateScrollBar(editor);
}
