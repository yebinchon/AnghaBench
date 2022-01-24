#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ right; } ;
struct TYPE_7__ {int /*<<< orphan*/  texthost; TYPE_1__ rcFormat; scalar_t__ bHaveFocus; int /*<<< orphan*/ * pCursors; } ;
typedef  TYPE_2__ ME_TextEditor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int,scalar_t__) ; 

void
FUNC5(ME_TextEditor *editor)
{
  int x, y, height;

  FUNC2(editor, &editor->pCursors[0], &x, &y, &height);
  if(editor->bHaveFocus && !FUNC3(editor))
  {
    x = FUNC4(x, editor->rcFormat.right-1);
    FUNC0(editor->texthost, NULL, 0, height);
    FUNC1(editor->texthost, x, y);
  }
}