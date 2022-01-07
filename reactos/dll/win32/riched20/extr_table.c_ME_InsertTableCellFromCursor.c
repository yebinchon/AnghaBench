
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ME_TextEditor ;
typedef int ME_DisplayItem ;


 int MEPF_CELL ;
 int * ME_InsertEndParaFromCursor (int *,int ,char*,int,int ) ;

ME_DisplayItem* ME_InsertTableCellFromCursor(ME_TextEditor *editor)
{
  ME_DisplayItem *para;
  WCHAR tab = '\t';
  para = ME_InsertEndParaFromCursor(editor, 0, &tab, 1, MEPF_CELL);
  return para;
}
