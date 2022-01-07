
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ nPos; } ;
struct TYPE_11__ {scalar_t__ nPos; } ;
struct TYPE_13__ {scalar_t__ nSelectionType; int texthost; int * pCursors; int bCaretAtEnd; TYPE_2__ vert_si; TYPE_1__ horz_si; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef int ME_Cursor ;


 int FALSE ;
 int ITextHost_TxShowCaret (int ,int ) ;
 int ME_EnsureVisible (TYPE_3__*,int *) ;
 int ME_ExtendAnchorSelection (TYPE_3__*) ;
 int ME_FindPixelPos (TYPE_3__*,int,int,int *,int *,int ) ;
 int ME_InvalidateSelection (TYPE_3__*) ;
 int ME_SendSelChange (TYPE_3__*) ;
 int ME_ShowCaret (TYPE_3__*) ;
 int TRUE ;
 scalar_t__ memcmp (int *,int *,int) ;
 scalar_t__ stDocument ;
 scalar_t__ stPosition ;

void ME_MouseMove(ME_TextEditor *editor, int x, int y)
{
  ME_Cursor tmp_cursor;

  if (editor->nSelectionType == stDocument)
      return;
  x += editor->horz_si.nPos;
  y += editor->vert_si.nPos;

  tmp_cursor = editor->pCursors[0];

  ME_FindPixelPos(editor, x, y, &tmp_cursor, &editor->bCaretAtEnd, TRUE);

  ME_InvalidateSelection(editor);
  editor->pCursors[0] = tmp_cursor;
  ME_ExtendAnchorSelection(editor);

  if (editor->nSelectionType != stPosition &&
      memcmp(&editor->pCursors[1], &editor->pCursors[3], sizeof(ME_Cursor)))
  {


      ME_EnsureVisible(editor, &editor->pCursors[1]);
  } else {
      ME_EnsureVisible(editor, &editor->pCursors[0]);
  }

  ME_InvalidateSelection(editor);
  ITextHost_TxShowCaret(editor->texthost, FALSE);
  ME_ShowCaret(editor);
  ME_SendSelChange(editor);
}
