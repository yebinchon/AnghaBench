
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_TextEditor ;
typedef int ME_Cursor ;


 int FALSE ;
 int ME_GetCursorOfs (int *) ;
 int ME_SetCursorToEnd (int *,int *,int ) ;

int ME_GetTextLength(ME_TextEditor *editor)
{
  ME_Cursor cursor;
  ME_SetCursorToEnd(editor, &cursor, FALSE);
  return ME_GetCursorOfs(&cursor);
}
