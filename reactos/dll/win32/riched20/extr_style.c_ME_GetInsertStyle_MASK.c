#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ nOffset; TYPE_5__* pRun; } ;
struct TYPE_17__ {int /*<<< orphan*/ * style; } ;
struct TYPE_15__ {TYPE_4__ run; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_2__ member; } ;
struct TYPE_16__ {TYPE_6__* pCursors; TYPE_1__* pBuffer; } ;
struct TYPE_14__ {int /*<<< orphan*/ * pCharStyle; } ;
typedef  TYPE_3__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  TYPE_4__ ME_Run ;
typedef  TYPE_5__ ME_DisplayItem ;
typedef  TYPE_6__ ME_Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_6__**,TYPE_6__**) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ diRun ; 
 int /*<<< orphan*/  diRunOrParagraph ; 

ME_Style *FUNC4(ME_TextEditor *editor, int nCursor)
{
  if (FUNC3(editor))
  {
    ME_Cursor *from, *to;

    FUNC2(editor, &from, &to);
    FUNC0(from->pRun->member.run.style);
    return from->pRun->member.run.style;
  }
  if (editor->pBuffer->pCharStyle) {
    FUNC0(editor->pBuffer->pCharStyle);
    return editor->pBuffer->pCharStyle;
  }
  else
  {
    ME_Cursor *pCursor = &editor->pCursors[nCursor];
    ME_DisplayItem *pRunItem = pCursor->pRun;
    ME_DisplayItem *pPrevItem = NULL;
    if (pCursor->nOffset) {
      ME_Run *pRun = &pRunItem->member.run;
      FUNC0(pRun->style);
      return pRun->style;
    }
    pPrevItem = FUNC1(pRunItem, diRunOrParagraph);
    if (pPrevItem->type == diRun)
    {
      FUNC0(pPrevItem->member.run.style);
      return pPrevItem->member.run.style;
    }
    else
    {
      FUNC0(pRunItem->member.run.style);
      return pRunItem->member.run.style;
    }
  }
}