#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ nOffset; TYPE_4__* pRun; TYPE_4__* pPara; } ;
struct TYPE_13__ {scalar_t__ nCharOfs; scalar_t__ len; } ;
struct TYPE_12__ {scalar_t__ nCharOfs; TYPE_4__* next_para; TYPE_4__* prev_para; } ;
struct TYPE_14__ {TYPE_2__ run; TYPE_1__ para; } ;
struct TYPE_15__ {TYPE_3__ member; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_4__ ME_DisplayItem ;
typedef  TYPE_5__ ME_Cursor ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 void* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_5__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  diRun ; 

int FUNC6(ME_TextEditor *editor, ME_Cursor *cursor, int nRelOfs, BOOL final_eop)
{
  cursor->nOffset += nRelOfs;
  if (cursor->nOffset < 0)
  {
    cursor->nOffset += cursor->pRun->member.run.nCharOfs;
    if (cursor->nOffset >= 0)
    {
      /* new offset in the same paragraph */
      do {
        cursor->pRun = FUNC0(cursor->pRun, diRun);
      } while (cursor->nOffset < cursor->pRun->member.run.nCharOfs);
      cursor->nOffset -= cursor->pRun->member.run.nCharOfs;
      return nRelOfs;
    }

    cursor->nOffset += cursor->pPara->member.para.nCharOfs;
    if (cursor->nOffset <= 0)
    {
      /* moved to the start of the text */
      nRelOfs -= cursor->nOffset;
      FUNC5(editor, cursor);
      return nRelOfs;
    }

    /* new offset in a previous paragraph */
    do {
      cursor->pPara = cursor->pPara->member.para.prev_para;
    } while (cursor->nOffset < cursor->pPara->member.para.nCharOfs);
    cursor->nOffset -= cursor->pPara->member.para.nCharOfs;

    cursor->pRun = FUNC0(cursor->pPara->member.para.next_para, diRun);
    while (cursor->nOffset < cursor->pRun->member.run.nCharOfs) {
      cursor->pRun = FUNC0(cursor->pRun, diRun);
    }
    cursor->nOffset -= cursor->pRun->member.run.nCharOfs;
  } else if (cursor->nOffset >= cursor->pRun->member.run.len) {
    ME_DisplayItem *next_para;
    int new_offset;

    new_offset = FUNC2(cursor);
    next_para = cursor->pPara->member.para.next_para;
    if (new_offset < next_para->member.para.nCharOfs)
    {
      /* new offset in the same paragraph */
      do {
        cursor->nOffset -= cursor->pRun->member.run.len;
        cursor->pRun = FUNC1(cursor->pRun, diRun);
      } while (cursor->nOffset >= cursor->pRun->member.run.len);
      return nRelOfs;
    }

    if (new_offset >= FUNC3(editor) + (final_eop ? 1 : 0))
    {
      /* new offset at the end of the text */
      FUNC4(editor, cursor, final_eop);
      nRelOfs -= new_offset - (FUNC3(editor) + (final_eop ? 1 : 0));
      return nRelOfs;
    }

    /* new offset in a following paragraph */
    do {
      cursor->pPara = next_para;
      next_para = next_para->member.para.next_para;
    } while (new_offset >= next_para->member.para.nCharOfs);

    cursor->nOffset = new_offset - cursor->pPara->member.para.nCharOfs;
    cursor->pRun = FUNC1(cursor->pPara, diRun);
    while (cursor->nOffset >= cursor->pRun->member.run.len)
    {
      cursor->nOffset -= cursor->pRun->member.run.len;
      cursor->pRun = FUNC1(cursor->pRun, diRun);
    }
  } /* else new offset is in the same run */
  return nRelOfs;
}