
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* pBuffer; } ;
struct TYPE_9__ {int * pCharStyle; } ;
typedef TYPE_2__ ME_TextEditor ;
typedef int ME_Style ;
typedef int ME_Cursor ;
typedef int CHARFORMAT2W ;


 int * ME_ApplyStyle (TYPE_2__*,int *,int *) ;
 int * ME_GetInsertStyle (TYPE_2__*,int ) ;
 int ME_GetSelection (TYPE_2__*,int **,int **) ;
 int ME_IsSelection (TYPE_2__*) ;
 int ME_ReleaseStyle (int *) ;
 int ME_SetCharFormat (TYPE_2__*,int *,int *,int *) ;

void ME_SetSelectionCharFormat(ME_TextEditor *editor, CHARFORMAT2W *pFmt)
{
  if (!ME_IsSelection(editor))
  {
    ME_Style *s;
    if (!editor->pBuffer->pCharStyle)
      editor->pBuffer->pCharStyle = ME_GetInsertStyle(editor, 0);
    s = ME_ApplyStyle(editor, editor->pBuffer->pCharStyle, pFmt);
    ME_ReleaseStyle(editor->pBuffer->pCharStyle);
    editor->pBuffer->pCharStyle = s;
  } else {
    ME_Cursor *from, *to;
    ME_GetSelection(editor, &from, &to);
    ME_SetCharFormat(editor, from, to, pFmt);
  }
}
