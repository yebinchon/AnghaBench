
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* pBuffer; } ;
struct TYPE_9__ {TYPE_1__* pCharStyle; } ;
struct TYPE_8__ {int fmt; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef int ME_Cursor ;
typedef int CHARFORMAT2W ;


 int ME_CopyCharFormat (int *,int *) ;
 int ME_GetCharFormat (TYPE_3__*,int *,int *,int *) ;
 int ME_GetSelection (TYPE_3__*,int **,int **) ;
 int ME_IsSelection (TYPE_3__*) ;

void ME_GetSelectionCharFormat(ME_TextEditor *editor, CHARFORMAT2W *pFmt)
{
  ME_Cursor *from, *to;
  if (!ME_IsSelection(editor) && editor->pBuffer->pCharStyle)
  {
    ME_CopyCharFormat(pFmt, &editor->pBuffer->pCharStyle->fmt);
    return;
  }
  ME_GetSelection(editor, &from, &to);
  ME_GetCharFormat(editor, from, to, pFmt);
}
