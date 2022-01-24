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
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC4(ME_TextEditor *editor, int cx, ME_Run *run, BOOL closest, BOOL visual_order)
{
    ME_Context c;
    int ret;

    FUNC3( &c, editor, FUNC0( editor->texthost ) );
    ret = FUNC1( &c, cx, run, closest, visual_order );
    FUNC2(&c);
    return ret;
}