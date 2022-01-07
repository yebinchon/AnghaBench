
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int chf ;
typedef int WORD ;
struct TYPE_26__ {int cbSize; } ;
struct TYPE_25__ {int nUDArrowX; int styleFlags; int hwndParent; int bDialogMode; int bEmulateVersion10; int nSelectionType; scalar_t__ bMouseCaptured; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef TYPE_2__ CHARFORMAT2W ;
typedef int BOOL ;


 int ES_READONLY ;
 int FALSE ;
 int GetKeyState (int) ;
 int MB_OK ;
 int ME_ArrowKey (TYPE_1__*,int const,int,int) ;
 int ME_CheckCharOffsets (TYPE_1__*) ;
 int ME_CommitCoalescingUndo (TYPE_1__*) ;
 int ME_CommitUndo (TYPE_1__*) ;
 int ME_ContinueCoalescingTransaction (TYPE_1__*) ;
 int ME_DeleteSelection (TYPE_1__*) ;
 int ME_DeleteTextAtCursor (TYPE_1__*,int,int) ;
 int ME_DumpStyleToBuf (TYPE_2__*,char*) ;
 int ME_GetSelectionCharFormat (TYPE_1__*,TYPE_2__*) ;
 int ME_IsSelection (TYPE_1__*) ;
 int ME_MoveCursorFromTableRowStartParagraph (TYPE_1__*) ;
 int ME_Redo (TYPE_1__*) ;
 int ME_SendRequestResize (TYPE_1__*,int) ;
 int ME_Undo (TYPE_1__*) ;
 int ME_UpdateRepaint (TYPE_1__*,int) ;
 int ME_UpdateSelectionLinkAttribute (TYPE_1__*) ;
 int MessageBoxA (int *,char*,char*,int ) ;
 int PostMessageW (int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;

 int VK_CONTROL ;






 int VK_MENU ;




 int VK_SHIFT ;


 int WM_CLOSE ;
 int WM_NEXTDLGCTL ;
 int copy_or_cut (TYPE_1__*,int) ;
 int handle_EM_EXSETSEL (TYPE_1__*,int ,int) ;
 int handle_enter (TYPE_1__*) ;
 int paste_special (TYPE_1__*,int ,int *,int) ;
 int stPosition ;

__attribute__((used)) static BOOL
ME_KeyDown(ME_TextEditor *editor, WORD nKey)
{
  BOOL ctrl_is_down = GetKeyState(VK_CONTROL) & 0x8000;
  BOOL shift_is_down = GetKeyState(VK_SHIFT) & 0x8000;

  if (editor->bMouseCaptured)
      return FALSE;
  if (nKey != VK_SHIFT && nKey != VK_CONTROL && nKey != VK_MENU)
      editor->nSelectionType = stPosition;

  switch (nKey)
  {
    case 134:
    case 130:
    case 135:
    case 137:
        editor->nUDArrowX = -1;

    case 128:
    case 138:
    case 132:
    case 133:
      ME_CommitUndo(editor);
      ME_ArrowKey(editor, nKey, shift_is_down, ctrl_is_down);
      return TRUE;
    case 140:
    case 139:
      editor->nUDArrowX = -1;

      if (editor->styleFlags & ES_READONLY)
        return FALSE;
      if (ME_IsSelection(editor))
      {
        ME_DeleteSelection(editor);
        ME_CommitUndo(editor);
      }
      else if (nKey == 139)
      {


        ME_DeleteTextAtCursor(editor, 1, 1);
        ME_CommitUndo(editor);
      }
      else if (ME_ArrowKey(editor, 134, FALSE, FALSE))
      {
        BOOL bDeletionSucceeded;

        ME_ContinueCoalescingTransaction(editor);
        bDeletionSucceeded = ME_DeleteTextAtCursor(editor, 1, 1);
        if (!bDeletionSucceeded && !editor->bEmulateVersion10) {



          ME_ArrowKey(editor, 130, FALSE, FALSE);
        }
        ME_CommitCoalescingUndo(editor);
      }
      else
        return TRUE;
      ME_MoveCursorFromTableRowStartParagraph(editor);
      ME_UpdateSelectionLinkAttribute(editor);
      ME_UpdateRepaint(editor, FALSE);
      ME_SendRequestResize(editor, FALSE);
      return TRUE;
    case 131:
      if (!editor->bEmulateVersion10)
          return handle_enter(editor);
      break;
    case 136:
      if (editor->bDialogMode && editor->hwndParent)
        PostMessageW(editor->hwndParent, WM_CLOSE, 0, 0);
      return TRUE;
    case 129:
      if (editor->bDialogMode && editor->hwndParent)
        SendMessageW(editor->hwndParent, WM_NEXTDLGCTL, shift_is_down, 0);
      return TRUE;
    case 'A':
      if (ctrl_is_down)
      {
        handle_EM_EXSETSEL( editor, 0, -1 );
        return TRUE;
      }
      break;
    case 'V':
      if (ctrl_is_down)
        return paste_special( editor, 0, ((void*)0), FALSE );
      break;
    case 'C':
    case 'X':
      if (ctrl_is_down)
        return copy_or_cut(editor, nKey == 'X');
      break;
    case 'Z':
      if (ctrl_is_down)
      {
        ME_Undo(editor);
        return TRUE;
      }
      break;
    case 'Y':
      if (ctrl_is_down)
      {
        ME_Redo(editor);
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

          ME_GetSelectionCharFormat(editor, &chf);
          ME_DumpStyleToBuf(&chf, buf);
          MessageBoxA(((void*)0), buf, "Style dump", MB_OK);
        }
        if (nKey == 'Q')
        {
          ME_CheckCharOffsets(editor);
        }
      }
  }
  return FALSE;
}
