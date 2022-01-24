#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * curwin; int /*<<< orphan*/ * curbuf; int /*<<< orphan*/ * interp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tclinfo ; 

__attribute__((used)) static void
FUNC4()
{
    if (!FUNC2(tclinfo.interp))
	FUNC0(tclinfo.interp);
    FUNC3(tclinfo.interp);
    /* The interpreter is now gets deleted.  All registered commands (esp.
     * window and buffer commands) are deleted, triggering their deletion
     * callback, which deletes all refs pointing to this interpreter.
     * We could garbage-collect the unused ref structs in all windows and
     * buffers, but unless the user creates hundreds of sub-interpreters
     * all referring to lots of windows and buffers, this is hardly worth
     * the effort.  Unused refs are recycled by other interpreters, and
     * all refs are free'd when the window/buffer gets closed by vim.
     */

    tclinfo.interp = NULL;
    FUNC1(tclinfo.curbuf);
    FUNC1(tclinfo.curwin);
    tclinfo.curbuf = tclinfo.curwin = NULL;
}