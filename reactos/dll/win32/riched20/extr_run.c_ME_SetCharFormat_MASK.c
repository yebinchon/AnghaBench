#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int nOffset; TYPE_6__* pRun; } ;
struct TYPE_18__ {int len; int nFlags; TYPE_4__* style; scalar_t__ nCharOfs; TYPE_5__* para; } ;
struct TYPE_19__ {TYPE_1__ run; } ;
struct TYPE_23__ {TYPE_2__ member; } ;
struct TYPE_20__ {TYPE_4__* style; } ;
struct TYPE_22__ {TYPE_3__ para_num; scalar_t__ nCharOfs; } ;
struct TYPE_21__ {int /*<<< orphan*/  fmt; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_4__ ME_Style ;
typedef  TYPE_5__ ME_Paragraph ;
typedef  TYPE_6__ ME_DisplayItem ;
typedef  TYPE_7__ ME_Cursor ;
typedef  int /*<<< orphan*/  CHARFORMAT2W ;

/* Variables and functions */
 int MERF_ENDPARA ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  diRun ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(ME_TextEditor *editor, ME_Cursor *start, ME_Cursor *end, CHARFORMAT2W *pFmt)
{
  ME_DisplayItem *run, *start_run = start->pRun, *end_run = NULL;

  if (end && start->pRun == end->pRun && start->nOffset == end->nOffset)
    return;

  if (start->nOffset == start->pRun->member.run.len)
    start_run = FUNC1( start->pRun, diRun );
  else if (start->nOffset)
  {
    /* SplitRunSimple may or may not update the cursors, depending on whether they
     * are selection cursors, but we need to make sure they are valid. */
    int split_offset = start->nOffset;
    ME_DisplayItem *split_run = FUNC3(editor, start);
    start_run = start->pRun;
    if (end && end->pRun == split_run)
    {
      end->pRun = start->pRun;
      end->nOffset -= split_offset;
    }
  }

  if (end)
  {
    if (end->nOffset == end->pRun->member.run.len)
      end_run = FUNC1( end->pRun, diRun );
    else
    {
      if (end->nOffset) FUNC3(editor, end);
      end_run = end->pRun;
    }
  }

  for (run = start_run; run != end_run; run = FUNC1( run, diRun ))
  {
    ME_Style *new_style = FUNC0(editor, run->member.run.style, pFmt);
    ME_Paragraph *para = run->member.run.para;

    FUNC4( editor, run->member.run.para->nCharOfs + run->member.run.nCharOfs,
                           run->member.run.len, &run->member.run.style->fmt );
    FUNC2(run->member.run.style);
    run->member.run.style = new_style;

    /* The para numbering style depends on the eop style */
    if ((run->member.run.nFlags & MERF_ENDPARA) && para->para_num.style)
    {
      FUNC2(para->para_num.style);
      para->para_num.style = NULL;
    }
    FUNC6(editor, FUNC5(para));
  }
}