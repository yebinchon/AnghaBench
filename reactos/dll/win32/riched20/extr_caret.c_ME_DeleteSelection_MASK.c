#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * pCursors; } ;
typedef  TYPE_1__ ME_TextEditor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int FUNC1 (TYPE_1__*,int*,int*) ; 

void FUNC2(ME_TextEditor *editor)
{
  int from, to;
  int nStartCursor = FUNC1(editor, &from, &to);
  int nEndCursor = nStartCursor ^ 1;
  FUNC0(editor, nStartCursor, to - from);
  editor->pCursors[nEndCursor] = editor->pCursors[nStartCursor];
}