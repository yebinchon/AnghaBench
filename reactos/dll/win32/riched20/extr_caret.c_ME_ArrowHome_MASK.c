#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pPara; scalar_t__ nOffset; int /*<<< orphan*/ * pRun; } ;
struct TYPE_5__ {scalar_t__ bCaretAtEnd; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_DisplayItem ;
typedef  TYPE_2__ ME_Cursor ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  diRun ; 
 int /*<<< orphan*/  diStartRow ; 

__attribute__((used)) static void FUNC4(ME_TextEditor *editor, ME_Cursor *pCursor)
{
  ME_DisplayItem *pRow = FUNC0(pCursor->pRun, diStartRow);
  if (pRow) {
    ME_DisplayItem *pRun;
    if (editor->bCaretAtEnd && !pCursor->nOffset) {
      pRow = FUNC0(pRow, diStartRow);
      if (!pRow)
        return;
    }
    pRun = FUNC1(pRow, diRun);
    if (pRun) {
      pCursor->pRun = pRun;
      FUNC3(pCursor->pPara == FUNC2(pRun));
      pCursor->nOffset = 0;
    }
  }
  editor->bCaretAtEnd = FALSE;
}