#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  HLF_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ got_int ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ msg_didout ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int p_more ; 

__attribute__((used)) static void
FUNC7()
{
    int		save_p_more = p_more;

    p_more = FALSE;	/* don't want see this message when scrolling back */
    if (msg_didout)	/* start on a new line */
	FUNC5('\n');
    if (got_int)
	FUNC0(FUNC2("Interrupt: "));

    FUNC1(FUNC2("Press ENTER or type command to continue"), FUNC3(HLF_R));
    if (!FUNC6())
	FUNC4();
    p_more = save_p_more;
}