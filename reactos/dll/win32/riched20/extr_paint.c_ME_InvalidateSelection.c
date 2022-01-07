
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ type; } ;
struct TYPE_22__ {int nLastSelStart; int nLastSelEnd; TYPE_6__* pLastSelEndPara; TYPE_6__* pLastSelStartPara; TYPE_4__* pBuffer; } ;
struct TYPE_21__ {TYPE_3__* pLast; int pFirst; } ;
struct TYPE_18__ {TYPE_6__* prev_para; } ;
struct TYPE_19__ {TYPE_1__ para; } ;
struct TYPE_20__ {TYPE_2__ member; } ;
typedef TYPE_5__ ME_TextEditor ;
typedef TYPE_6__ ME_DisplayItem ;


 TYPE_6__* ME_FindItemFwd (int ,scalar_t__) ;
 int ME_GetSelectionOfs (TYPE_5__*,int*,int*) ;
 int ME_GetSelectionParas (TYPE_5__*,TYPE_6__**,TYPE_6__**) ;
 int ME_GetTextLength (TYPE_5__*) ;
 int ME_InvalidateParagraphRange (TYPE_5__*,TYPE_6__*,TYPE_6__*) ;
 int ME_WrapMarkedParagraphs (TYPE_5__*) ;
 int assert (int) ;
 scalar_t__ diParagraph ;

void
ME_InvalidateSelection(ME_TextEditor *editor)
{
  ME_DisplayItem *sel_start, *sel_end;
  ME_DisplayItem *repaint_start = ((void*)0), *repaint_end = ((void*)0);
  int nStart, nEnd;
  int len = ME_GetTextLength(editor);

  ME_GetSelectionOfs(editor, &nStart, &nEnd);


  if (nStart == nEnd && editor->nLastSelStart == editor->nLastSelEnd)
    return;
  ME_WrapMarkedParagraphs(editor);
  ME_GetSelectionParas(editor, &sel_start, &sel_end);
  assert(sel_start->type == diParagraph);
  assert(sel_end->type == diParagraph);


  if (editor->nLastSelStart > len || editor->nLastSelEnd > len) {
    repaint_start = ME_FindItemFwd(editor->pBuffer->pFirst, diParagraph);
    repaint_end = editor->pBuffer->pLast->member.para.prev_para;
  } else {

    if (nStart < editor->nLastSelStart) {
      repaint_start = sel_start;
      repaint_end = editor->pLastSelStartPara;
    } else if (nStart > editor->nLastSelStart) {
      repaint_start = editor->pLastSelStartPara;
      repaint_end = sel_start;
    }


    if (nEnd < editor->nLastSelEnd) {
      if (!repaint_start) repaint_start = sel_end;
      repaint_end = editor->pLastSelEndPara;
    } else if (nEnd > editor->nLastSelEnd) {
      if (!repaint_start) repaint_start = editor->pLastSelEndPara;
      repaint_end = sel_end;
    }
  }

  if (repaint_start)
    ME_InvalidateParagraphRange(editor, repaint_start, repaint_end);

  ME_GetSelectionOfs(editor, &editor->nLastSelStart, &editor->nLastSelEnd);
  ME_GetSelectionParas(editor, &editor->pLastSelStartPara, &editor->pLastSelEndPara);
  assert(editor->pLastSelStartPara->type == diParagraph);
  assert(editor->pLastSelEndPara->type == diParagraph);
}
