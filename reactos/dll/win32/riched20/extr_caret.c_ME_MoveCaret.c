
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ right; } ;
struct TYPE_7__ {int texthost; TYPE_1__ rcFormat; scalar_t__ bHaveFocus; int * pCursors; } ;
typedef TYPE_2__ ME_TextEditor ;


 int ITextHost_TxCreateCaret (int ,int *,int ,int) ;
 int ITextHost_TxSetCaretPos (int ,int,int) ;
 int ME_GetCursorCoordinates (TYPE_2__*,int *,int*,int*,int*) ;
 int ME_IsSelection (TYPE_2__*) ;
 int min (int,scalar_t__) ;

void
ME_MoveCaret(ME_TextEditor *editor)
{
  int x, y, height;

  ME_GetCursorCoordinates(editor, &editor->pCursors[0], &x, &y, &height);
  if(editor->bHaveFocus && !ME_IsSelection(editor))
  {
    x = min(x, editor->rcFormat.right-1);
    ITextHost_TxCreateCaret(editor->texthost, ((void*)0), 0, height);
    ITextHost_TxSetCaretPos(editor->texthost, x, y);
  }
}
