
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ME_TextEditor ;
typedef int ME_Style ;


 int MERF_ENDROW ;
 int ME_DeleteSelection (int *) ;
 int * ME_GetInsertStyle (int *,int) ;
 int ME_InternalInsertTextFromCursor (int *,int,char*,int,int *,int ) ;
 scalar_t__ ME_IsSelection (int *) ;
 int ME_ReleaseStyle (int *) ;

void ME_InsertEndRowFromCursor(ME_TextEditor *editor, int nCursor)
{
  ME_Style *pStyle = ME_GetInsertStyle(editor, nCursor);
  WCHAR space = ' ';


  if (ME_IsSelection(editor))
    ME_DeleteSelection(editor);

  ME_InternalInsertTextFromCursor(editor, nCursor, &space, 1, pStyle,
                                  MERF_ENDROW);
  ME_ReleaseStyle(pStyle);
}
