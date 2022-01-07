
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ nOffset; TYPE_5__* pRun; } ;
struct TYPE_17__ {int * style; } ;
struct TYPE_15__ {TYPE_4__ run; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_2__ member; } ;
struct TYPE_16__ {TYPE_6__* pCursors; TYPE_1__* pBuffer; } ;
struct TYPE_14__ {int * pCharStyle; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef int ME_Style ;
typedef TYPE_4__ ME_Run ;
typedef TYPE_5__ ME_DisplayItem ;
typedef TYPE_6__ ME_Cursor ;


 int ME_AddRefStyle (int *) ;
 TYPE_5__* ME_FindItemBack (TYPE_5__*,int ) ;
 int ME_GetSelection (TYPE_3__*,TYPE_6__**,TYPE_6__**) ;
 scalar_t__ ME_IsSelection (TYPE_3__*) ;
 scalar_t__ diRun ;
 int diRunOrParagraph ;

ME_Style *ME_GetInsertStyle(ME_TextEditor *editor, int nCursor)
{
  if (ME_IsSelection(editor))
  {
    ME_Cursor *from, *to;

    ME_GetSelection(editor, &from, &to);
    ME_AddRefStyle(from->pRun->member.run.style);
    return from->pRun->member.run.style;
  }
  if (editor->pBuffer->pCharStyle) {
    ME_AddRefStyle(editor->pBuffer->pCharStyle);
    return editor->pBuffer->pCharStyle;
  }
  else
  {
    ME_Cursor *pCursor = &editor->pCursors[nCursor];
    ME_DisplayItem *pRunItem = pCursor->pRun;
    ME_DisplayItem *pPrevItem = ((void*)0);
    if (pCursor->nOffset) {
      ME_Run *pRun = &pRunItem->member.run;
      ME_AddRefStyle(pRun->style);
      return pRun->style;
    }
    pPrevItem = ME_FindItemBack(pRunItem, diRunOrParagraph);
    if (pPrevItem->type == diRun)
    {
      ME_AddRefStyle(pPrevItem->member.run.style);
      return pPrevItem->member.run.style;
    }
    else
    {
      ME_AddRefStyle(pRunItem->member.run.style);
      return pRunItem->member.run.style;
    }
  }
}
