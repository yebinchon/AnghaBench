
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int nOffset; TYPE_2__* pRun; void* pPara; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {int nSelectionType; TYPE_5__* pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_SelectionType ;
typedef TYPE_2__ ME_DisplayItem ;
typedef int ME_DIType ;


 int FALSE ;
 void* ME_FindItemBack (TYPE_2__*,int ) ;
 void* ME_FindItemFwd (TYPE_2__*,int ) ;
 void* ME_GetParagraph (TYPE_2__*) ;
 int ME_MoveCursorWords (TYPE_1__*,TYPE_5__*,int) ;
 int ME_SetCursorToEnd (TYPE_1__*,TYPE_5__*,int ) ;
 int ME_SetCursorToStart (TYPE_1__*,TYPE_5__*) ;
 int assert (TYPE_2__*) ;
 int diParagraph ;
 int diParagraphOrEnd ;
 int diRun ;
 int diStartRow ;
 int diStartRowOrParagraphOrEnd ;
 int diTextEnd ;






__attribute__((used)) static void
ME_SelectByType(ME_TextEditor *editor, ME_SelectionType selectionType)
{






  editor->nSelectionType = selectionType;
  switch(selectionType)
  {
    case 129:
      break;
    case 128:
      ME_MoveCursorWords(editor, &editor->pCursors[0], +1);
      editor->pCursors[1] = editor->pCursors[0];
      ME_MoveCursorWords(editor, &editor->pCursors[1], -1);
      break;
    case 131:
    case 130:
    {
      ME_DisplayItem *pItem;
      ME_DIType fwdSearchType, backSearchType;
      if (selectionType == 130) {
          backSearchType = diParagraph;
          fwdSearchType = diParagraphOrEnd;
      } else {
          backSearchType = diStartRow;
          fwdSearchType = diStartRowOrParagraphOrEnd;
      }
      pItem = ME_FindItemFwd(editor->pCursors[0].pRun, fwdSearchType);
      assert(pItem);
      if (pItem->type == diTextEnd)
          editor->pCursors[0].pRun = ME_FindItemBack(pItem, diRun);
      else
          editor->pCursors[0].pRun = ME_FindItemFwd(pItem, diRun);
      editor->pCursors[0].pPara = ME_GetParagraph(editor->pCursors[0].pRun);
      editor->pCursors[0].nOffset = 0;

      pItem = ME_FindItemBack(pItem, backSearchType);
      editor->pCursors[1].pRun = ME_FindItemFwd(pItem, diRun);
      editor->pCursors[1].pPara = ME_GetParagraph(editor->pCursors[1].pRun);
      editor->pCursors[1].nOffset = 0;
      break;
    }
    case 132:

      editor->nSelectionType = 132;
      ME_SetCursorToStart(editor, &editor->pCursors[1]);
      ME_SetCursorToEnd(editor, &editor->pCursors[0], FALSE);
      break;
    default: assert(0);
  }

  editor->pCursors[2] = editor->pCursors[0];
  editor->pCursors[3] = editor->pCursors[1];
}
