#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int nFlags; int len; int /*<<< orphan*/  para; scalar_t__ nCharOfs; int /*<<< orphan*/  style; } ;
struct TYPE_18__ {int nOffset; int /*<<< orphan*/  pPara; TYPE_4__* pRun; } ;
struct TYPE_14__ {TYPE_8__ run; } ;
struct TYPE_17__ {TYPE_1__ member; int /*<<< orphan*/  next; } ;
struct TYPE_16__ {int nCursors; TYPE_2__* pCursors; } ;
struct TYPE_15__ {int nOffset; TYPE_4__* pRun; } ;
typedef  TYPE_3__ ME_TextEditor ;
typedef  TYPE_4__ ME_DisplayItem ;
typedef  TYPE_5__ ME_Cursor ;

/* Variables and functions */
 int MERF_NONTEXT ; 
 int MERF_SPLITMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

ME_DisplayItem *FUNC5(ME_TextEditor *editor, ME_Cursor *cursor)
{
  ME_DisplayItem *run = cursor->pRun;
  ME_DisplayItem *new_run;
  int i;
  int nOffset = cursor->nOffset;

  FUNC3(!(run->member.run.nFlags & MERF_NONTEXT));

  new_run = FUNC1(run->member.run.style,
                       run->member.run.nFlags & MERF_SPLITMASK);
  new_run->member.run.nCharOfs = run->member.run.nCharOfs + nOffset;
  new_run->member.run.len = run->member.run.len - nOffset;
  new_run->member.run.para = run->member.run.para;
  run->member.run.len = nOffset;
  cursor->pRun = new_run;
  cursor->nOffset = 0;

  FUNC0(run->next, new_run);

  FUNC2(editor, &run->member.run);
  FUNC2(editor, &new_run->member.run);
  for (i = 0; i < editor->nCursors; i++) {
    if (editor->pCursors[i].pRun == run &&
        editor->pCursors[i].nOffset >= nOffset) {
      editor->pCursors[i].pRun = new_run;
      editor->pCursors[i].nOffset -= nOffset;
    }
  }
  FUNC4(editor, cursor->pPara);
  return run;
}