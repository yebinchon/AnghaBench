#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* pBuffer; } ;
struct TYPE_9__ {TYPE_1__* pCharStyle; } ;
struct TYPE_8__ {int /*<<< orphan*/  fmt; } ;
typedef  TYPE_3__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Cursor ;
typedef  int /*<<< orphan*/  CHARFORMAT2W ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void FUNC4(ME_TextEditor *editor, CHARFORMAT2W *pFmt)
{
  ME_Cursor *from, *to;
  if (!FUNC3(editor) && editor->pBuffer->pCharStyle)
  {
    FUNC0(pFmt, &editor->pBuffer->pCharStyle->fmt);
    return;
  }
  FUNC2(editor, &from, &to);
  FUNC1(editor, from, to, pFmt);
}