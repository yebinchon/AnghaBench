
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pPara; scalar_t__ nOffset; int * pRun; } ;
struct TYPE_5__ {scalar_t__ bCaretAtEnd; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_DisplayItem ;
typedef TYPE_2__ ME_Cursor ;


 scalar_t__ FALSE ;
 int * ME_FindItemBack (int *,int ) ;
 int * ME_FindItemFwd (int *,int ) ;
 scalar_t__ ME_GetParagraph (int *) ;
 int assert (int) ;
 int diRun ;
 int diStartRow ;

__attribute__((used)) static void ME_ArrowHome(ME_TextEditor *editor, ME_Cursor *pCursor)
{
  ME_DisplayItem *pRow = ME_FindItemBack(pCursor->pRun, diStartRow);
  if (pRow) {
    ME_DisplayItem *pRun;
    if (editor->bCaretAtEnd && !pCursor->nOffset) {
      pRow = ME_FindItemBack(pRow, diStartRow);
      if (!pRow)
        return;
    }
    pRun = ME_FindItemFwd(pRow, diRun);
    if (pRun) {
      pCursor->pRun = pRun;
      assert(pCursor->pPara == ME_GetParagraph(pRun));
      pCursor->nOffset = 0;
    }
  }
  editor->bCaretAtEnd = FALSE;
}
