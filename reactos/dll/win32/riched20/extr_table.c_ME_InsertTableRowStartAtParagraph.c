
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


struct TYPE_19__ {TYPE_5__* pPara; int pRun; scalar_t__ nOffset; } ;
struct TYPE_14__ {int dwMask; int wEffects; } ;
struct TYPE_15__ {int nFlags; TYPE_5__* next_para; TYPE_1__ fmt; int pCell; } ;
struct TYPE_16__ {TYPE_2__ para; } ;
struct TYPE_18__ {TYPE_3__ member; } ;
struct TYPE_17__ {TYPE_6__* pCursors; } ;
typedef TYPE_4__ ME_TextEditor ;
typedef TYPE_5__ ME_DisplayItem ;
typedef TYPE_6__ ME_Cursor ;


 int MEPF_CELL ;
 int MEPF_ROWEND ;
 int MEPF_ROWSTART ;
 int ME_FindItemFwd (TYPE_5__*,int ) ;
 TYPE_5__* ME_GetParagraph (int ) ;
 TYPE_5__* ME_InsertTableRowStartFromCursor (TYPE_4__*) ;
 int PFE_TABLE ;
 int PFE_TABLEROWDELIMITER ;
 int PFM_TABLE ;
 int PFM_TABLEROWDELIMITER ;
 int diRun ;

ME_DisplayItem* ME_InsertTableRowStartAtParagraph(ME_TextEditor *editor,
                                                  ME_DisplayItem *para)
{
  ME_DisplayItem *prev_para, *end_para;
  ME_Cursor savedCursor = editor->pCursors[0];
  ME_DisplayItem *startRowPara;
  editor->pCursors[0].pPara = para;
  editor->pCursors[0].pRun = ME_FindItemFwd(para, diRun);
  editor->pCursors[0].nOffset = 0;
  editor->pCursors[1] = editor->pCursors[0];
  startRowPara = ME_InsertTableRowStartFromCursor(editor);
  savedCursor.pPara = ME_GetParagraph(savedCursor.pRun);
  editor->pCursors[0] = savedCursor;
  editor->pCursors[1] = editor->pCursors[0];

  end_para = editor->pCursors[0].pPara->member.para.next_para;
  prev_para = startRowPara->member.para.next_para;
  para = prev_para->member.para.next_para;
  while (para != end_para)
  {
    para->member.para.pCell = prev_para->member.para.pCell;
    para->member.para.nFlags |= MEPF_CELL;
    para->member.para.nFlags &= ~(MEPF_ROWSTART|MEPF_ROWEND);
    para->member.para.fmt.dwMask |= PFM_TABLE|PFM_TABLEROWDELIMITER;
    para->member.para.fmt.wEffects |= PFE_TABLE;
    para->member.para.fmt.wEffects &= ~PFE_TABLEROWDELIMITER;
    prev_para = para;
    para = para->member.para.next_para;
  }
  return startRowPara;
}
