#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  texthost; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Run ;
typedef  int /*<<< orphan*/  ME_Context ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC4(ME_TextEditor *editor, ME_Run *pRun, int nOffset, BOOL visual_order)
{
    ME_Context c;
    int ret;

    FUNC2(&c, editor, FUNC0(editor->texthost));
    ret = FUNC3( &c, pRun, nOffset, visual_order );
    FUNC1(&c);

    return ret;
}