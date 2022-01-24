#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ type; } ;
struct TYPE_22__ {int nLastSelStart; int nLastSelEnd; TYPE_6__* pLastSelEndPara; TYPE_6__* pLastSelStartPara; TYPE_4__* pBuffer; } ;
struct TYPE_21__ {TYPE_3__* pLast; int /*<<< orphan*/  pFirst; } ;
struct TYPE_18__ {TYPE_6__* prev_para; } ;
struct TYPE_19__ {TYPE_1__ para; } ;
struct TYPE_20__ {TYPE_2__ member; } ;
typedef  TYPE_5__ ME_TextEditor ;
typedef  TYPE_6__ ME_DisplayItem ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__**,TYPE_6__**) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ diParagraph ; 

void
FUNC7(ME_TextEditor *editor)
{
  ME_DisplayItem *sel_start, *sel_end;
  ME_DisplayItem *repaint_start = NULL, *repaint_end = NULL;
  int nStart, nEnd;
  int len = FUNC3(editor);

  FUNC1(editor, &nStart, &nEnd);
  /* if both old and new selection are 0-char (= caret only), then
  there's no (inverted) area to be repainted, neither old nor new */
  if (nStart == nEnd && editor->nLastSelStart == editor->nLastSelEnd)
    return;
  FUNC5(editor);
  FUNC2(editor, &sel_start, &sel_end);
  FUNC6(sel_start->type == diParagraph);
  FUNC6(sel_end->type == diParagraph);
  /* last selection markers aren't always updated, which means
   * they can point past the end of the document */
  if (editor->nLastSelStart > len || editor->nLastSelEnd > len) {
    repaint_start = FUNC0(editor->pBuffer->pFirst, diParagraph);
    repaint_end = editor->pBuffer->pLast->member.para.prev_para;
  } else {
    /* if the start part of selection is being expanded or contracted... */
    if (nStart < editor->nLastSelStart) {
      repaint_start = sel_start;
      repaint_end = editor->pLastSelStartPara;
    } else if (nStart > editor->nLastSelStart) {
      repaint_start = editor->pLastSelStartPara;
      repaint_end = sel_start;
    }

    /* if the end part of selection is being contracted or expanded... */
    if (nEnd < editor->nLastSelEnd) {
      if (!repaint_start) repaint_start = sel_end;
      repaint_end = editor->pLastSelEndPara;
    } else if (nEnd > editor->nLastSelEnd) {
      if (!repaint_start) repaint_start = editor->pLastSelEndPara;
      repaint_end = sel_end;
    }
  }

  if (repaint_start)
    FUNC4(editor, repaint_start, repaint_end);
  /* remember the last invalidated position */
  FUNC1(editor, &editor->nLastSelStart, &editor->nLastSelEnd);
  FUNC2(editor, &editor->pLastSelStartPara, &editor->pLastSelEndPara);
  FUNC6(editor->pLastSelStartPara->type == diParagraph);
  FUNC6(editor->pLastSelEndPara->type == diParagraph);
}