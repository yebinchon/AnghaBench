#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sbi ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_23__ {TYPE_3__* pRun; } ;
struct TYPE_17__ {short top; short left; short bottom; } ;
struct TYPE_22__ {scalar_t__ nSelectionType; int /*<<< orphan*/  texthost; TYPE_1__ rcFormat; scalar_t__ bEmulateVersion10; scalar_t__ bMouseCaptured; scalar_t__ hWnd; } ;
struct TYPE_21__ {short x; short y; } ;
struct TYPE_20__ {int cbSize; int* rgstate; int /*<<< orphan*/  rcScrollBar; } ;
struct TYPE_18__ {int /*<<< orphan*/  run; } ;
struct TYPE_19__ {TYPE_2__ member; } ;
typedef  TYPE_4__ SCROLLBARINFO ;
typedef  TYPE_5__ POINT ;
typedef  TYPE_6__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Run ;
typedef  TYPE_7__ ME_Cursor ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_ARROW ; 
 scalar_t__ IDC_HAND ; 
 scalar_t__ IDC_IBEAM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,short,short,TYPE_7__*,scalar_t__*) ; 
 int FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int*,int*) ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  OBJID_HSCROLL ; 
 int /*<<< orphan*/  OBJID_VSCROLL ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_5__) ; 
 int STATE_SYSTEM_INVISIBLE ; 
 int STATE_SYSTEM_OFFSCREEN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  hLeft ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ stLine ; 

__attribute__((used)) static BOOL FUNC13(ME_TextEditor *editor)
{
  ME_Cursor cursor;
  POINT pt;
  BOOL isExact;
  SCROLLBARINFO sbi;
  DWORD messagePos = FUNC0();
  pt.x = (short)FUNC5(messagePos);
  pt.y = (short)FUNC2(messagePos);

  if (editor->hWnd)
  {
    sbi.cbSize = sizeof(sbi);
    FUNC1(editor->hWnd, OBJID_HSCROLL, &sbi);
    if (!(sbi.rgstate[0] & (STATE_SYSTEM_INVISIBLE|STATE_SYSTEM_OFFSCREEN)) &&
        FUNC11(&sbi.rcScrollBar, pt))
    {
        FUNC4(editor->texthost,
                              FUNC6(NULL, (WCHAR*)IDC_ARROW), FALSE);
        return TRUE;
    }
    sbi.cbSize = sizeof(sbi);
    FUNC1(editor->hWnd, OBJID_VSCROLL, &sbi);
    if (!(sbi.rgstate[0] & (STATE_SYSTEM_INVISIBLE|STATE_SYSTEM_OFFSCREEN)) &&
        FUNC11(&sbi.rcScrollBar, pt))
    {
        FUNC4(editor->texthost,
                              FUNC6(NULL, (WCHAR*)IDC_ARROW), FALSE);
        return TRUE;
    }
  }
  FUNC3(editor->texthost, &pt);

  if (editor->nSelectionType == stLine && editor->bMouseCaptured) {
      FUNC4(editor->texthost, hLeft, FALSE);
      return TRUE;
  }
  if (!editor->bEmulateVersion10 /* v4.1 */ &&
      pt.y < editor->rcFormat.top &&
      pt.x < editor->rcFormat.left)
  {
      FUNC4(editor->texthost, hLeft, FALSE);
      return TRUE;
  }
  if (pt.y < editor->rcFormat.top || pt.y > editor->rcFormat.bottom)
  {
      if (editor->bEmulateVersion10) /* v1.0 - 3.0 */
          FUNC4(editor->texthost,
                                FUNC6(NULL, (WCHAR*)IDC_ARROW), FALSE);
      else /* v4.1 */
          FUNC4(editor->texthost,
                                FUNC6(NULL, (WCHAR*)IDC_IBEAM), TRUE);
      return TRUE;
  }
  if (pt.x < editor->rcFormat.left)
  {
      FUNC4(editor->texthost, hLeft, FALSE);
      return TRUE;
  }
  FUNC7(editor, pt.x, pt.y, &cursor, &isExact);
  if (isExact)
  {
      ME_Run *run;

      run = &cursor.pRun->member.run;
      if (FUNC12( run ))
      {
          FUNC4(editor->texthost,
                                FUNC6(NULL, (WCHAR*)IDC_HAND),
                                FALSE);
          return TRUE;
      }

      if (FUNC10(editor))
      {
          int selStart, selEnd;
          int offset = FUNC8(&cursor);

          FUNC9(editor, &selStart, &selEnd);
          if (selStart <= offset && selEnd >= offset) {
              FUNC4(editor->texthost,
                                    FUNC6(NULL, (WCHAR*)IDC_ARROW),
                                    FALSE);
              return TRUE;
          }
      }
  }
  FUNC4(editor->texthost,
                        FUNC6(NULL, (WCHAR*)IDC_IBEAM), TRUE);
  return TRUE;
}