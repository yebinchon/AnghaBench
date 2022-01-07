
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_TextEditor ;
typedef int ME_Style ;


 int * ME_GetInsertStyle (int *,int ) ;

ME_Style *ME_GetSelectionInsertStyle(ME_TextEditor *editor)
{
  return ME_GetInsertStyle(editor, 0);
}
