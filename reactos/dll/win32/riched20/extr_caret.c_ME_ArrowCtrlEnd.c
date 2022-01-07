
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bCaretAtEnd; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_Cursor ;


 int FALSE ;
 int ME_SetCursorToEnd (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void ME_ArrowCtrlEnd(ME_TextEditor *editor, ME_Cursor *pCursor)
{
  ME_SetCursorToEnd(editor, pCursor, FALSE);
  editor->bCaretAtEnd = FALSE;
}
