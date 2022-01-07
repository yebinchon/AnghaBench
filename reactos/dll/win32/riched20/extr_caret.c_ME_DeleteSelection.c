
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;


 int ME_DeleteTextAtCursor (TYPE_1__*,int,int) ;
 int ME_GetSelectionOfs (TYPE_1__*,int*,int*) ;

void ME_DeleteSelection(ME_TextEditor *editor)
{
  int from, to;
  int nStartCursor = ME_GetSelectionOfs(editor, &from, &to);
  int nEndCursor = nStartCursor ^ 1;
  ME_DeleteTextAtCursor(editor, nStartCursor, to - from);
  editor->pCursors[nEndCursor] = editor->pCursors[nStartCursor];
}
