
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nFlags; TYPE_5__* next_para; } ;
struct TYPE_9__ {TYPE_1__ para; } ;
struct TYPE_12__ {TYPE_2__ member; } ;
struct TYPE_11__ {TYPE_3__* pCursors; } ;
struct TYPE_10__ {scalar_t__ nOffset; int pRun; TYPE_5__* pPara; } ;
typedef TYPE_4__ ME_TextEditor ;
typedef TYPE_5__ ME_DisplayItem ;


 int MEPF_ROWSTART ;
 int ME_FindItemFwd (TYPE_5__*,int ) ;
 int diRun ;

void ME_MoveCursorFromTableRowStartParagraph(ME_TextEditor *editor)
{
  ME_DisplayItem *para = editor->pCursors[0].pPara;
  if (para == editor->pCursors[1].pPara &&
      para->member.para.nFlags & MEPF_ROWSTART) {


    para = para->member.para.next_para;
    editor->pCursors[0].pPara = para;
    editor->pCursors[0].pRun = ME_FindItemFwd(para, diRun);
    editor->pCursors[0].nOffset = 0;
    editor->pCursors[1] = editor->pCursors[0];
  }
}
