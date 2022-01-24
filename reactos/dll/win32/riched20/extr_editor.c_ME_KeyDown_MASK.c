#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chf ;
typedef  int WORD ;
struct TYPE_26__ {int cbSize; } ;
struct TYPE_25__ {int nUDArrowX; int styleFlags; int /*<<< orphan*/  hwndParent; int /*<<< orphan*/  bDialogMode; int /*<<< orphan*/  bEmulateVersion10; int /*<<< orphan*/  nSelectionType; scalar_t__ bMouseCaptured; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  TYPE_2__ CHARFORMAT2W ;
typedef  int BOOL ;

/* Variables and functions */
 int ES_READONLY ; 
 int FALSE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int TRUE ; 
#define  VK_BACK 140 
 int VK_CONTROL ; 
#define  VK_DELETE 139 
#define  VK_DOWN 138 
#define  VK_END 137 
#define  VK_ESCAPE 136 
#define  VK_HOME 135 
#define  VK_LEFT 134 
 int VK_MENU ; 
#define  VK_NEXT 133 
#define  VK_PRIOR 132 
#define  VK_RETURN 131 
#define  VK_RIGHT 130 
 int VK_SHIFT ; 
#define  VK_TAB 129 
#define  VK_UP 128 
 int /*<<< orphan*/  WM_CLOSE ; 
 int /*<<< orphan*/  WM_NEXTDLGCTL ; 
 int FUNC20 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (TYPE_1__*) ; 
 int FUNC23 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stPosition ; 

__attribute__((used)) static BOOL
FUNC24(ME_TextEditor *editor, WORD nKey)
{
  BOOL ctrl_is_down = FUNC0(VK_CONTROL) & 0x8000;
  BOOL shift_is_down = FUNC0(VK_SHIFT) & 0x8000;

  if (editor->bMouseCaptured)
      return FALSE;
  if (nKey != VK_SHIFT && nKey != VK_CONTROL && nKey != VK_MENU)
      editor->nSelectionType = stPosition;

  switch (nKey)
  {
    case VK_LEFT:
    case VK_RIGHT:
    case VK_HOME:
    case VK_END:
        editor->nUDArrowX = -1;
        /* fall through */
    case VK_UP:
    case VK_DOWN:
    case VK_PRIOR:
    case VK_NEXT:
      FUNC4(editor); /* End coalesced undos for typed characters */
      FUNC1(editor, nKey, shift_is_down, ctrl_is_down);
      return TRUE;
    case VK_BACK:
    case VK_DELETE:
      editor->nUDArrowX = -1;
      /* FIXME backspace and delete aren't the same, they act different wrt paragraph style of the merged paragraph */
      if (editor->styleFlags & ES_READONLY)
        return FALSE;
      if (FUNC10(editor))
      {
        FUNC6(editor);
        FUNC4(editor);
      }
      else if (nKey == VK_DELETE)
      {
        /* Delete stops group typing.
         * (See MSDN remarks on EM_STOPGROUPTYPING message) */
        FUNC7(editor, 1, 1);
        FUNC4(editor);
      }
      else if (FUNC1(editor, VK_LEFT, FALSE, FALSE))
      {
        BOOL bDeletionSucceeded;
        /* Backspace can be grouped for a single undo */
        FUNC5(editor);
        bDeletionSucceeded = FUNC7(editor, 1, 1);
        if (!bDeletionSucceeded && !editor->bEmulateVersion10) { /* v4.1 */
          /* Deletion was prevented so the cursor is moved back to where it was.
           * (e.g. this happens when trying to delete cell boundaries)
           */
          FUNC1(editor, VK_RIGHT, FALSE, FALSE);
        }
        FUNC3(editor);
      }
      else
        return TRUE;
      FUNC11(editor);
      FUNC16(editor);
      FUNC15(editor, FALSE);
      FUNC13(editor, FALSE);
      return TRUE;
    case VK_RETURN:
      if (!editor->bEmulateVersion10)
          return FUNC22(editor);
      break;
    case VK_ESCAPE:
      if (editor->bDialogMode && editor->hwndParent)
        FUNC18(editor->hwndParent, WM_CLOSE, 0, 0);
      return TRUE;
    case VK_TAB:
      if (editor->bDialogMode && editor->hwndParent)
        FUNC19(editor->hwndParent, WM_NEXTDLGCTL, shift_is_down, 0);
      return TRUE;
    case 'A':
      if (ctrl_is_down)
      {
        FUNC21( editor, 0, -1 );
        return TRUE;
      }
      break;
    case 'V':
      if (ctrl_is_down)
        return FUNC23( editor, 0, NULL, FALSE );
      break;
    case 'C':
    case 'X':
      if (ctrl_is_down)
        return FUNC20(editor, nKey == 'X');
      break;
    case 'Z':
      if (ctrl_is_down)
      {
        FUNC14(editor);
        return TRUE;
      }
      break;
    case 'Y':
      if (ctrl_is_down)
      {
        FUNC12(editor);
        return TRUE;
      }
      break;

    default:
      if (nKey != VK_SHIFT && nKey != VK_CONTROL && nKey && nKey != VK_MENU)
          editor->nUDArrowX = -1;
      if (ctrl_is_down)
      {
        if (nKey == 'W')
        {
          CHARFORMAT2W chf;
          char buf[2048];
          chf.cbSize = sizeof(chf);
          
          FUNC9(editor, &chf);
          FUNC8(&chf, buf);
          FUNC17(NULL, buf, "Style dump", MB_OK);
        }
        if (nKey == 'Q')
        {
          FUNC2(editor);
        }
      }
  }
  return FALSE;
}