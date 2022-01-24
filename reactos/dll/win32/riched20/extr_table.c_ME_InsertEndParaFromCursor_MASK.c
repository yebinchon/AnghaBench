#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  pRun; int /*<<< orphan*/ * pPara; scalar_t__ nOffset; } ;
struct TYPE_8__ {TYPE_2__* pCursors; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  int /*<<< orphan*/  ME_DisplayItem ;
typedef  TYPE_2__ ME_Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  diRun ; 

__attribute__((used)) static ME_DisplayItem* FUNC5(ME_TextEditor *editor,
                                                  int nCursor,
                                                  const WCHAR *eol_str, int eol_len,
                                                  int paraFlags)
{
  ME_Style *pStyle = FUNC1(editor, nCursor);
  ME_DisplayItem *tp;
  ME_Cursor* cursor = &editor->pCursors[nCursor];
  if (cursor->nOffset)
    FUNC4(editor, cursor);

  tp = FUNC3(editor, cursor->pRun, pStyle, eol_str, eol_len, paraFlags);
  FUNC2(pStyle);
  cursor->pPara = tp;
  cursor->pRun = FUNC0(tp, diRun);
  return tp;
}