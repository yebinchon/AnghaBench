
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;


 int ME_GetCursorOfs (int *) ;

int ME_GetSelectionOfs(ME_TextEditor *editor, int *from, int *to)
{
  *from = ME_GetCursorOfs(&editor->pCursors[0]);
  *to = ME_GetCursorOfs(&editor->pCursors[1]);

  if (*from > *to)
  {
    int tmp = *from;
    *from = *to;
    *to = tmp;
    return 1;
  }
  return 0;
}
