#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* pBuffer; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pCharStyle; } ;
typedef  TYPE_2__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  int /*<<< orphan*/  ME_Cursor ;
typedef  int /*<<< orphan*/  CHARFORMAT2W ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(ME_TextEditor *editor, CHARFORMAT2W *pFmt)
{
  if (!FUNC3(editor))
  {
    ME_Style *s;
    if (!editor->pBuffer->pCharStyle)
      editor->pBuffer->pCharStyle = FUNC1(editor, 0);
    s = FUNC0(editor, editor->pBuffer->pCharStyle, pFmt);
    FUNC4(editor->pBuffer->pCharStyle);
    editor->pBuffer->pCharStyle = s;
  } else {
    ME_Cursor *from, *to;
    FUNC2(editor, &from, &to);
    FUNC5(editor, from, to, pFmt);
  }
}