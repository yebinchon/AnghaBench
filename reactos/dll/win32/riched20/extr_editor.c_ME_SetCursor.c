
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int sbi ;
typedef int WCHAR ;
struct TYPE_23__ {TYPE_3__* pRun; } ;
struct TYPE_17__ {short top; short left; short bottom; } ;
struct TYPE_22__ {scalar_t__ nSelectionType; int texthost; TYPE_1__ rcFormat; scalar_t__ bEmulateVersion10; scalar_t__ bMouseCaptured; scalar_t__ hWnd; } ;
struct TYPE_21__ {short x; short y; } ;
struct TYPE_20__ {int cbSize; int* rgstate; int rcScrollBar; } ;
struct TYPE_18__ {int run; } ;
struct TYPE_19__ {TYPE_2__ member; } ;
typedef TYPE_4__ SCROLLBARINFO ;
typedef TYPE_5__ POINT ;
typedef TYPE_6__ ME_TextEditor ;
typedef int ME_Run ;
typedef TYPE_7__ ME_Cursor ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetMessagePos () ;
 int GetScrollBarInfo (scalar_t__,int ,TYPE_4__*) ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ IDC_ARROW ;
 scalar_t__ IDC_HAND ;
 scalar_t__ IDC_IBEAM ;
 int ITextHost_TxScreenToClient (int ,TYPE_5__*) ;
 int ITextHost_TxSetCursor (int ,int ,scalar_t__) ;
 scalar_t__ LOWORD (int ) ;
 int LoadCursorW (int *,int *) ;
 int ME_CharFromPos (TYPE_6__*,short,short,TYPE_7__*,scalar_t__*) ;
 int ME_GetCursorOfs (TYPE_7__*) ;
 int ME_GetSelectionOfs (TYPE_6__*,int*,int*) ;
 scalar_t__ ME_IsSelection (TYPE_6__*) ;
 int OBJID_HSCROLL ;
 int OBJID_VSCROLL ;
 scalar_t__ PtInRect (int *,TYPE_5__) ;
 int STATE_SYSTEM_INVISIBLE ;
 int STATE_SYSTEM_OFFSCREEN ;
 scalar_t__ TRUE ;
 int hLeft ;
 scalar_t__ is_link (int *) ;
 scalar_t__ stLine ;

__attribute__((used)) static BOOL ME_SetCursor(ME_TextEditor *editor)
{
  ME_Cursor cursor;
  POINT pt;
  BOOL isExact;
  SCROLLBARINFO sbi;
  DWORD messagePos = GetMessagePos();
  pt.x = (short)LOWORD(messagePos);
  pt.y = (short)HIWORD(messagePos);

  if (editor->hWnd)
  {
    sbi.cbSize = sizeof(sbi);
    GetScrollBarInfo(editor->hWnd, OBJID_HSCROLL, &sbi);
    if (!(sbi.rgstate[0] & (STATE_SYSTEM_INVISIBLE|STATE_SYSTEM_OFFSCREEN)) &&
        PtInRect(&sbi.rcScrollBar, pt))
    {
        ITextHost_TxSetCursor(editor->texthost,
                              LoadCursorW(((void*)0), (WCHAR*)IDC_ARROW), FALSE);
        return TRUE;
    }
    sbi.cbSize = sizeof(sbi);
    GetScrollBarInfo(editor->hWnd, OBJID_VSCROLL, &sbi);
    if (!(sbi.rgstate[0] & (STATE_SYSTEM_INVISIBLE|STATE_SYSTEM_OFFSCREEN)) &&
        PtInRect(&sbi.rcScrollBar, pt))
    {
        ITextHost_TxSetCursor(editor->texthost,
                              LoadCursorW(((void*)0), (WCHAR*)IDC_ARROW), FALSE);
        return TRUE;
    }
  }
  ITextHost_TxScreenToClient(editor->texthost, &pt);

  if (editor->nSelectionType == stLine && editor->bMouseCaptured) {
      ITextHost_TxSetCursor(editor->texthost, hLeft, FALSE);
      return TRUE;
  }
  if (!editor->bEmulateVersion10 &&
      pt.y < editor->rcFormat.top &&
      pt.x < editor->rcFormat.left)
  {
      ITextHost_TxSetCursor(editor->texthost, hLeft, FALSE);
      return TRUE;
  }
  if (pt.y < editor->rcFormat.top || pt.y > editor->rcFormat.bottom)
  {
      if (editor->bEmulateVersion10)
          ITextHost_TxSetCursor(editor->texthost,
                                LoadCursorW(((void*)0), (WCHAR*)IDC_ARROW), FALSE);
      else
          ITextHost_TxSetCursor(editor->texthost,
                                LoadCursorW(((void*)0), (WCHAR*)IDC_IBEAM), TRUE);
      return TRUE;
  }
  if (pt.x < editor->rcFormat.left)
  {
      ITextHost_TxSetCursor(editor->texthost, hLeft, FALSE);
      return TRUE;
  }
  ME_CharFromPos(editor, pt.x, pt.y, &cursor, &isExact);
  if (isExact)
  {
      ME_Run *run;

      run = &cursor.pRun->member.run;
      if (is_link( run ))
      {
          ITextHost_TxSetCursor(editor->texthost,
                                LoadCursorW(((void*)0), (WCHAR*)IDC_HAND),
                                FALSE);
          return TRUE;
      }

      if (ME_IsSelection(editor))
      {
          int selStart, selEnd;
          int offset = ME_GetCursorOfs(&cursor);

          ME_GetSelectionOfs(editor, &selStart, &selEnd);
          if (selStart <= offset && selEnd >= offset) {
              ITextHost_TxSetCursor(editor->texthost,
                                    LoadCursorW(((void*)0), (WCHAR*)IDC_ARROW),
                                    FALSE);
              return TRUE;
          }
      }
  }
  ITextHost_TxSetCursor(editor->texthost,
                        LoadCursorW(((void*)0), (WCHAR*)IDC_IBEAM), TRUE);
  return TRUE;
}
