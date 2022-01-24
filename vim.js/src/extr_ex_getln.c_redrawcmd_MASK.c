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
struct TYPE_2__ {int /*<<< orphan*/  cmdlen; int /*<<< orphan*/ * cmdbuff; } ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 TYPE_1__ ccline ; 
 scalar_t__ cmd_silent ; 
 int /*<<< orphan*/  cmdline_row ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* msg_no_more ; 
 void* msg_scroll ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* skip_redraw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6()
{
    if (cmd_silent)
	return;

    /* when 'incsearch' is set there may be no command line while redrawing */
    if (ccline.cmdbuff == NULL)
    {
	FUNC5(cmdline_row, 0);
	FUNC1();
	return;
    }

    FUNC2();
    FUNC3();

    /* Don't use more prompt, truncate the cmdline if it doesn't fit. */
    msg_no_more = TRUE;
    FUNC0(0, ccline.cmdlen);
    FUNC1();
    msg_no_more = FALSE;

    FUNC4();

    /*
     * An emsg() before may have set msg_scroll. This is used in normal mode,
     * in cmdline mode we can reset them now.
     */
    msg_scroll = FALSE;		/* next message overwrites cmdline */

    /* Typing ':' at the more prompt may set skip_redraw.  We don't want this
     * in cmdline mode */
    skip_redraw = FALSE;
}