
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nCursors; int nModifyStep; int * pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int BOOL ;


 int FALSE ;
 int ME_InternalDeleteText (TYPE_1__*,int *,int,int ) ;
 int assert (int) ;

BOOL ME_DeleteTextAtCursor(ME_TextEditor *editor, int nCursor, int nChars)
{
  assert(nCursor>=0 && nCursor<editor->nCursors);

  editor->nModifyStep = 1;
  return ME_InternalDeleteText(editor, &editor->pCursors[nCursor],
                               nChars, FALSE);
}
