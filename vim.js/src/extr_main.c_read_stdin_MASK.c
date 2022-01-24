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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEA_DIALOG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ignored ; 
 int msg_didany ; 
 int /*<<< orphan*/  no_wait_return ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_exists_action ; 

__attribute__((used)) static void
FUNC6()
{
    int	    i;

#if defined(HAS_SWAP_EXISTS_ACTION)
    /* When getting the ATTENTION prompt here, use a dialog */
    swap_exists_action = SEA_DIALOG;
#endif
    no_wait_return = TRUE;
    i = msg_didany;
    FUNC5(TRUE);
    (void)FUNC4(TRUE, NULL, 0);	/* create memfile and read file */
    no_wait_return = FALSE;
    msg_didany = i;
    FUNC0("reading stdin");
#if defined(HAS_SWAP_EXISTS_ACTION)
    check_swap_exists_action();
#endif
#if !(defined(AMIGA) || defined(MACOS))
    /*
     * Close stdin and dup it from stderr.  Required for GPM to work
     * properly, and for running external commands.
     * Is there any other system that cannot do this?
     */
    FUNC2(0);
    ignored = FUNC3(2);
#endif
}