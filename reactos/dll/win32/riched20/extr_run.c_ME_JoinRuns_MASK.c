#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int nCharOfs; scalar_t__ len; } ;
struct TYPE_15__ {TYPE_7__ run; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_2__ member; struct TYPE_17__* next; } ;
struct TYPE_16__ {int nCursors; TYPE_1__* pCursors; } ;
struct TYPE_14__ {int /*<<< orphan*/  nOffset; TYPE_4__* pRun; } ;
typedef  TYPE_3__ ME_TextEditor ;
typedef  TYPE_4__ ME_DisplayItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ diRun ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC7(ME_TextEditor *editor, ME_DisplayItem *p)
{
  ME_DisplayItem *pNext = p->next;
  int i;
  FUNC5(p->type == diRun && pNext->type == diRun);
  FUNC5(p->member.run.nCharOfs != -1);
  FUNC6(editor, FUNC2(p));

  /* Update all cursors so that they don't contain the soon deleted run */
  for (i=0; i<editor->nCursors; i++) {
    if (editor->pCursors[i].pRun == pNext) {
      editor->pCursors[i].pRun = p;
      editor->pCursors[i].nOffset += p->member.run.len;
    }
  }

  p->member.run.len += pNext->member.run.len;
  FUNC3(pNext);
  FUNC1(pNext);
  FUNC4(editor, &p->member.run);
  FUNC0(editor);
}