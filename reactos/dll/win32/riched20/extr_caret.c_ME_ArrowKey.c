
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int texthost; int * pCursors; void* bCaretAtEnd; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_Cursor ;
typedef void* BOOL ;


 void* FALSE ;
 int ITextHost_TxShowCaret (int ,void*) ;
 int ME_ArrowCtrlEnd (TYPE_1__*,int *) ;
 int ME_ArrowCtrlHome (TYPE_1__*,int *) ;
 int ME_ArrowEnd (TYPE_1__*,int *) ;
 int ME_ArrowHome (TYPE_1__*,int *) ;
 int ME_ArrowPageDown (TYPE_1__*,int *) ;
 int ME_ArrowPageUp (TYPE_1__*,int *) ;
 int ME_CheckCharOffsets (TYPE_1__*) ;
 int ME_EnsureVisible (TYPE_1__*,int *) ;
 int ME_InvalidateSelection (TYPE_1__*) ;
 void* ME_MoveCursorChars (TYPE_1__*,int *,int,void*) ;
 int ME_MoveCursorLines (TYPE_1__*,int *,int,void*) ;
 void* ME_MoveCursorWords (TYPE_1__*,int *,int) ;
 int ME_Repaint (TYPE_1__*) ;
 int ME_SendSelChange (TYPE_1__*) ;
 int ME_ShowCaret (TYPE_1__*) ;
BOOL
ME_ArrowKey(ME_TextEditor *editor, int nVKey, BOOL extend, BOOL ctrl)
{
  int nCursor = 0;
  ME_Cursor *p = &editor->pCursors[nCursor];
  ME_Cursor tmp_curs = *p;
  BOOL success = FALSE;

  ME_CheckCharOffsets(editor);
  switch(nVKey) {
    case 132:
      editor->bCaretAtEnd = FALSE;
      if (ctrl)
        success = ME_MoveCursorWords(editor, &tmp_curs, -1);
      else
        success = ME_MoveCursorChars(editor, &tmp_curs, -1, extend);
      break;
    case 129:
      editor->bCaretAtEnd = FALSE;
      if (ctrl)
        success = ME_MoveCursorWords(editor, &tmp_curs, +1);
      else
        success = ME_MoveCursorChars(editor, &tmp_curs, +1, extend);
      break;
    case 128:
      ME_MoveCursorLines(editor, &tmp_curs, -1, extend);
      break;
    case 135:
      ME_MoveCursorLines(editor, &tmp_curs, +1, extend);
      break;
    case 130:
      ME_ArrowPageUp(editor, &tmp_curs);
      break;
    case 131:
      ME_ArrowPageDown(editor, &tmp_curs);
      break;
    case 133: {
      if (ctrl)
        ME_ArrowCtrlHome(editor, &tmp_curs);
      else
        ME_ArrowHome(editor, &tmp_curs);
      editor->bCaretAtEnd = FALSE;
      break;
    }
    case 134:
      if (ctrl)
        ME_ArrowCtrlEnd(editor, &tmp_curs);
      else
        ME_ArrowEnd(editor, &tmp_curs);
      break;
  }

  if (!extend)
    editor->pCursors[1] = tmp_curs;
  *p = tmp_curs;

  ME_InvalidateSelection(editor);
  ME_Repaint(editor);
  ITextHost_TxShowCaret(editor->texthost, FALSE);
  ME_EnsureVisible(editor, &tmp_curs);
  ME_ShowCaret(editor);
  ME_SendSelChange(editor);
  return success;
}
